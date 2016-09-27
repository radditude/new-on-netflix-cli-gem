# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whats_on_netflix/version'

Gem::Specification.new do |spec|
  spec.name          = "whats-on-netflix"
  spec.version       = WhatsOnNetflix::VERSION
  spec.authors       = ["Clare"]
  spec.email         = ["clare.e.horton@gmail.com"]

  spec.summary       = "A summary"
  spec.homepage      = "https://github.com/radditude/whats-on-netflix-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = ["config/environment.rb", "lib/whats_on_netflix.rb, lib/whats_on_netflix/coming_soon.rb, lib/whats_on_netflix/leaving_soon.rb, lib/whats_on_netflix/version.rb, lib/whats_on_netflix/scraper.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  
end
