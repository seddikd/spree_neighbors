# encoding: UTF-8

require 'yaml'
yaml = YAML.load(File.read('SPREE_TRAVEL_VERSIONS'))
versions = yaml['gems']

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_neighbors'
  s.version     = '0.4'
  s.summary     = 'Spree Travel Neighbors'
  s.description = 'Add neighbors products to a product that have geographic coordinate'
  s.required_ruby_version = '>= 1.9.3'

  s.authors   = ['Pedro Quintero', 'Miguel Sancho', 'Cesar Lage', 'Raul Perez-alejo']
  s.email     = 'pqr@openjaf.com'
  s.homepage  = 'http://github.com/openjaf/spree_travel'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*']
  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.1'
  s.add_dependency 'spree_core', '~> ' + versions['spree']
  s.add_dependency 'spree_auth_devise', '~> ' + versions['spree_auth_devise']
  s.add_dependency 'spree_location', '> 0.7'
  s.add_dependency 'geocoder', '1.1.9'


  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end