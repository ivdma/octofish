# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octofish/version'

Gem::Specification.new do |spec|
  spec.name          = "octofish"
  spec.version       = Octofish::VERSION
  spec.authors       = ["Ivan Malykh"]
  spec.email         = ["ivan@roqua.nl"]
  spec.summary       = %q{Github ruby webhook wrapper}
  spec.description   = %q{Github ruby webhook wrapper gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', '~> 1.0.2'

  spec.add_development_dependency 'bundler',       '~> 1.6'
  spec.add_development_dependency 'rake',          '~> 10.3.1'
  spec.add_development_dependency 'rspec',         '~> 2.14.1'
  spec.add_development_dependency 'guard-rspec',   '~> 4.2.8'
  spec.add_development_dependency 'guard-bundler', '~> 2.0.0'
end
