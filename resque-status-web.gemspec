$:.push File.expand_path("../lib", __FILE__)

require "resque/status/web/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "resque-status-web"
  s.version     = Resque::Status::Web::VERSION
  s.authors     = ["Brandon Conway"]
  s.email       = ["brandoncc@gmail.com"]
  s.homepage    = "http://github.com/brandoncc/resque-status-web"
  s.summary     = "This gem provides tabs in Resque Web for managing statuses " +
                  "provided by resque-status."
                  
  s.description = "resque-status comes bundled with the ui for the sinatra " +
                  "based web interface. This gem is a direct extraction of " +
                  "that ui then converted to a Rails Engine as a plugin for " +
                  "resque-web."
  s.license     = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_runtime_dependency 'resque-web', '~> 0.0.8'
  s.add_runtime_dependency 'resque-status', '~> 0.5'

  s.add_development_dependency "rails", "~> 4.2"
end
