$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "source-sans-pro/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "source-sans-pro-rails"
  s.version     = SourceSansPro::Rails::VERSION
  s.authors     = ["Caleb Land"]
  s.email       = ["caleb@land.fm"]
  s.homepage    = "http://github.com/caleb/source-pro-sans-rails"
  s.summary     = "A convenient way to use the Source Sans Pro fonts in your rails app"
  s.description = "source-sans-pro-rails is a Rails engine that allows you to use the Adobe's Source Sans Pro fonts in your web app"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "sqlite3"
end
