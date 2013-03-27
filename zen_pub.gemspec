# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zen_pub/version'

Gem::Specification.new do |spec|
  spec.name          = "zen_pub"
  spec.version       = ZenPub::VERSION
  spec.authors       = ["Sergey Prikhodko"]
  spec.email         = ["prikha@gmail.com"]
  spec.description   = %q{Publication mixin}
  spec.summary       = %q{Mixin for rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
