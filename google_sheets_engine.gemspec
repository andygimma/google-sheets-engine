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
  # s.summary     = "TODO: Summary of GoogleSheetsEngine."
  # s.description = "TODO: Description of GoogleSheetsEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
