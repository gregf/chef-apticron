name 'apticron'
maintainer 'Greg Fitzgerald'
maintainer_email 'greg@gregf.org'
license 'Apache 2.0'
description 'Installs and Configures apticron'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/gregf/chef-apticron'
issues_url 'https://github.com/gregf/chef-apticron/issues'
version '0.3.0'

%w(ubuntu debian).each do |os|
  supports os
end

recipe 'default', 'Installs and configures apticron'
