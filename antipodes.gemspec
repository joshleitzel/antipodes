# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'antipodes/version'

Gem::Specification.new do |spec|
  spec.name          = 'antipodes'
  spec.version       = Antipodes::VERSION
  spec.authors       = ['Josh Leitzel']
  spec.email         = ['joshleitzel@gmail.com']
  spec.description   = %q{Calculate the antipodes of any point on Earth given latitude and longitude, or using geocoding}
  spec.summary       = %q{Geographical antipodes calculator}
  spec.homepage      = "https://github.com/joshleitzel/antipodes"
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'geocoder'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.6'
  spec.add_development_dependency 'pry-debugger'
end
