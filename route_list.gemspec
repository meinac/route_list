# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'route_list/version'

Gem::Specification.new do |spec|
  spec.name          = "route_list"
  spec.version       = RouteList::VERSION
  spec.authors       = ["Mehmet Emin İNAÇ"]
  spec.email         = ["mehmetemininac@gmail.com"]
  spec.summary       = %q{Get rails route list programmatically.}
  spec.description   = %q{Get rails route list programmatically.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
