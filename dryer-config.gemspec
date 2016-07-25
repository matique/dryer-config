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
  s.email       = ['dittmar.krall@matique.de']
  s.homepage    = 'http://matique.de'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
#  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 0'
  s.add_development_dependency 'rake'
end
