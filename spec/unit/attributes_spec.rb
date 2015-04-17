require 'spec_helper'

describe 'apticron attributes' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(:platform => 'debian', :version  => '7.0') do |node|
      node.automatic['fqdn'] = '2014.oaklandraiders.com'
    end.converge('apticron::default')
  end
  let(:apticron) { chef_run.node['apticron'] }

  it 'sets a default email address' do
    expect(apticron['email']).to eq('root')
  end

  it 'sets a package name' do
    expect(apticron['package']).to eq('apticron')
  end

  it 'sets a config file path' do
    expect(apticron['config_file']).to eq('/etc/apticron/apticron.conf')
  end

  it 'sets some default values' do
    expect(apticron['diff_only']).to eq('1')
    expect(apticron['listchanges_profile']).to eq('apticron')
    expect(apticron['all_fqdns']).to eq('1')
    expect(apticron['system']).to eq('2014.oaklandraiders.com')
    expect(apticron['ipaddressnum']).to eq('1')
    expect(apticron['ipaddresses']).to eq(nil)
    expect(apticron['notify_holds']).to eq('0')
    expect(apticron['notify_new']).to eq('0')
    expect(apticron['notify_no_updates']).to eq('0')
    expect(apticron['custom_subject']).to eq(nil)
    expect(apticron['custom_no_updates_subject']).to eq(nil)
    expect(apticron['custom_from']).to eq(nil)
  end
end
