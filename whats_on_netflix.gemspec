# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whats_on_netflix/version'

Gem::Specification.new do |spec|
  spec.name          = "whats-on-netflix"
  spec.version       = WhatsOnNetflix::VERSION
  spec.authors       = ["Clare Horton"]
  spec.email         = ["clare.e.horton@gmail.com"]

  spec.summary       = "See what's being added and removed from Netflix this month"
  spec.homepage      = "https://github.com/radditude/whats-on-netflix-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["whats-on-netflix"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = "whats-on-netflix"
  spec.require_paths = ["lib", "lib/whats_on_netflix", "config"]
  spec.version       = WhatsOnNetflix::VERSION
  spec.license       = "MIT"

  spec.add_runtime_dependency "nokogiri", "~>1"
  
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0"
  spec.add_development_dependency "nokogiri", "~>1"
end
