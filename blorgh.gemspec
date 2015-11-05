$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = Blorgh::VERSION
  s.authors     = ["Nakul Pathak"]
  s.email       = ["nakulpathak3@hotmail.com"]
  s.homepage    = "https://nakulpathak.com"
  s.summary     = "Add blog posts and comments to any Rails app."
  s.description = "Uses basic scaffolding to add ability to post and comment through a Rails Engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.2"

  s.add_development_dependency "sqlite3"
end
