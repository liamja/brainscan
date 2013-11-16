# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brainscan/version'

Gem::Specification.new do |spec|
  spec.name          = "Brainscan"
  spec.version       = Brainscan::VERSION
  spec.authors       = ["Liam Anderson"]
  spec.email         = ["liam.anderson.91@gmail.com"]
  spec.description   = %q{Bitcoin brain wallet scanner.}
  spec.summary       = %q{Brainscan is a POC to demonstrate weak passphrases for bitcoin brain wallets can be a Very Bad Idea™.}
  spec.homepage      = "https://github.com/liamja/brainscan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "formatador"
  spec.add_runtime_dependency "httparty"
end
