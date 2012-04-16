# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_master_price'
  s.version     = '1.0.rc1'
  s.summary     = 'Simple extension to use the product\'s master price on variants.'
  s.description = 'With this extension you can enable each product\'s variant to use the product\'s master price.'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Marcio Lima'
  s.email     = 'mdlima.github@mailnull.com'
  s.homepage  = 'http://github.com/mdlima/spree_master_price'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.1.0.rc1'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-spork', '0.3.2'
  s.add_development_dependency 'spork', '0.9.0'
  
  # OS X Specific gems
  s.add_development_dependency 'rb-fsevent', '~> 0.9.1'
  s.add_development_dependency 'growl'
end
