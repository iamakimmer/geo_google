# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geo_google/version'

Gem::Specification.new do |spec|
  spec.name          = "geo_google"
  spec.version       = GeoGoogle::VERSION
  spec.authors       = ["Matthew Kim"]
  spec.email         = ["matthewjkim@gmail.com"]
  spec.description   = %q{Converts addresses to geo coordinates using Google Maps JS Api}
  spec.summary       = %q{Convert addresses to lat/long and vica versa}
  spec.homepage      = "https://github.com/iamakimmer/geo_google"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
