# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awscleanup/version'
require 'bundler'
require 'rake'

Gem::Specification.new do |spec|
  spec.name          = 'awscleanup'
  spec.version       = Version::VERSION
  spec.authors       = ['Jens Skott']
  spec.email         = ['jens.skott@gmail.com']

  spec.summary       = 'Help with aws tasks'
  spec.description   = 'To list and delete aws stuff not needed'
  spec.homepage      = 'https://github.com/jensskott/awscleanup'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ['awscleanup']
  spec.require_paths = ['lib']

  # Runtime gems
  spec.add_runtime_dependency 'aws-sdk', '2.6.2'

  # Develop gems
  spec.add_development_dependency 'bundler', '1.13'
  spec.add_development_dependency 'rake', '10.0'
  spec.add_development_dependency 'rspec', '3.0'
end
