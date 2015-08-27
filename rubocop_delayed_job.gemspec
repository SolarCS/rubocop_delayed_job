# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_delayed_job/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop_delayed_job"
  spec.version       = RubocopDelayedJob::VERSION
  spec.authors       = ["Max Jacobson"]
  spec.email         = ["max@hardscrabble.net"]

  spec.summary       = %q{RuboCop extension which adds some delayed job guidelines}
  spec.description   = %q{Checks usage of delayed job and offers some guidelines}
  spec.homepage      = "https://github.com/SolarCS/rubocop_delayed_job"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 0.32"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
