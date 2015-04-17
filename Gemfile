source 'https://rubygems.org'

group :lint do
  gem 'foodcritic', '~> 4.0'
  gem 'rubocop', '~> 0.30.0'
  gem 'rainbow', '< 2.0'
end

group :unit do
  gem 'berkshelf', '~> 3.2'
  gem 'chefspec', '~> 4.2'
end

group :kitchen_common do
  gem 'test-kitchen', '~> 1.3'
end

group :kitchen_cloud do
  gem 'kitchen-digitalocean'
end

group :development do
  gem 'libnotify'
  gem 'guard', '~> 2.12'
  gem 'guard-kitchen'
  gem 'guard-foodcritic'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rake'
  gem 'stove', '~> 3.2'
end
