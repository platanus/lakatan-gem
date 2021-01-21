lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lakatan/version"

Gem::Specification.new do |spec|
  spec.name          = "lakatan"
  spec.version       = Lakatan::VERSION
  spec.authors       = ["Platanus", "Leandro Segovia"]
  spec.email         = ["rubygems@platan.us", "leandro@platan.us"]
  spec.homepage      = "https://github.com/platanus/lakatan-gem"
  spec.summary       = "Ruby Gem to play nice with Lakatam"
  spec.description   = "Ruby Gem to play nice with Lakatam"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activeresource"
  spec.add_dependency "require_all"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop", "~> 0.88.0"
  spec.add_development_dependency "rubocop-performance"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
