# -*- encoding: utf-8 -*-
require File.expand_path('../lib/freegeoip/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ezekiel Templin"]
  gem.email         = ["zeke@templ.in"]
  gem.description   = %q{Ruby Client for FreeGeoIP's geolocation API}
  gem.summary       = %q{Ruby Client for FreeGeoIP's geolocation API}
  gem.homepage      = "http://github.com/ezkl/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "freegeoip"
  gem.require_paths = ["lib"]
  gem.version       = FreeGeoIP::VERSION
  
  gem.add_runtime_dependency("faraday", "~> 0.8.0")
  gem.add_runtime_dependency("multi_json", "~> 1.2")
  gem.add_development_dependency("rspec", "~> 2.9.0")
  gem.add_development_dependency("vcr", "~> 2.0.0")
end
