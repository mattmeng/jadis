# coding: utf-8
lib = File.expand_path( '../lib', __FILE__ )
$LOAD_PATH.unshift( lib ) unless $LOAD_PATH.include?( lib )
require 'jadis/constants'

Gem::Specification.new do |spec|
  spec.name          = "jadis"
  spec.version       = Jadis::VERSION
  spec.authors       = ["Matt Meng"]
  spec.email         = ["mengmatt@gmail.com"]

  spec.summary       = %q{Just Another Documentation and Instruction Solution}
  spec.description   = %q{Create searchable, versionable, user-facing documentation with simple Markdown.}
  spec.homepage      = "http://www.github.com/mattmeng/jadis"
  spec.license       = "MIT"

  spec.files         = Dir['exe/**/*', 'lib/**/*', 'spec/**/*', 'Gemfile', 'LICENSE.txt', 'README.md']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nesty", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
