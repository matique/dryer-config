lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dryer-config/version'

Gem::Specification.new do |s|
  s.name        = 'dryer-config'
  s.version     = DryerConfig::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Several pristine Rails config files."
  s.description = "Outsource several config files to a gem."
  s.authors     = ['Dittmar Krall']
  s.email       = ['dittmar.krall@matiq.com']
  s.homepage    = 'https://github.com/matique/dryer-config'
  s.license     = 'MIT'
  s.platform    = Gem::Platform::RUBY

  # s.files         = `git ls-files`.split("\n")
  s.files = Dir["config/**/*"]
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler'
end
