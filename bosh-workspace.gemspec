# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bosh/workspace/version'

Gem::Specification.new do |spec|
  spec.name          = "bosh-workspace"
  spec.version       = Bosh::Manifests::VERSION
  spec.authors       = ["Ruben Koster"]
  spec.email         = ["rkoster@starkandwayne.com"]
  spec.description   = %q{Manage your bosh workspace}
  spec.summary       = %q{Manage your bosh workspace}
  spec.homepage      = "http://starkandwayne.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency "bosh_cli", ">= 1.2905.0"
  spec.add_runtime_dependency "bosh_common", ">= 1.2905.0"
  spec.add_runtime_dependency "semi_semantic", "~> 1.2.0"
  spec.add_runtime_dependency "membrane", "~> 1.1.0"
  spec.add_runtime_dependency "hashdiff", "~> 0.2.1"
  spec.add_runtime_dependency "rugged", "~> 0.24.0b11"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.3.0"
  spec.add_development_dependency "rspec-its", '~> 1.2.0'
  spec.add_development_dependency "rake"
  spec.add_development_dependency "archive-zip", "~> 0.7.0"
end
