require 'spec_helper'

describe 'apticron::default' do
  context 'install apticron defaults' do
    let(:chef_run) do
      ChefSpec::Runner.new(:platform => 'debian', :version  => '7.0') do |node|
      end.converge(described_recipe)
    end
    let(:apticron) { chef_run.node['apticron'] }
    let(:apticonfig) { chef_run.template(apticron['config_file']) }

    it 'installs apticron' do
      expect(chef_run).to install_package(apticron['package'])
    end

    it 'renders the apticron config template' do
      expect(chef_run).to create_template(apticonfig.path)
    end

    it 'is owned by root:root' do
      expect(apticonfig.owner).to eq('root')
      expect(apticonfig.group).to eq('root')
    end

    it 'has 0644 permissions' do
      expect(apticonfig.mode).to eq(0644)
    end

    it 'renders the template with content' do
      expect(chef_run).to render_file(apticonfig.path).with_content('# apticron')
    end
  end
end
