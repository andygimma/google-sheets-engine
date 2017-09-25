$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "google_sheets_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "google_sheets_engine"
  s.version     = GoogleSheetsEngine::VERSION
  s.authors     = ["andygimma"]
  s.email       = ["andy.gimma@gmail.com"]
  # s.homepage    = "TODO"
  s.summary     = "Google Sheets companion engine"
  # s.description = "TODO: Description of GoogleSheetsEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'bootstrap', '~> 4.0.0.beta'
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency 'simple_form'
  s.add_development_dependency 'country_select'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'popper_js'

  s.test_files = Dir["spec/**/*"]
end
