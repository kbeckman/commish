# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'commish/version'

Gem::Specification.new do |spec|
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.name          = 'commish'
  spec.version       = Commish::VERSION
  spec.authors       = %w[kbeckman]
  spec.email         = %w[kbeckman@redfournine.com]

  spec.summary       = 'RuboCop defaults for Red Four Nine, LLC.'
  spec.description   = 'RuboCop defaults for Red Four Nine, LLC.'
  spec.homepage      = 'https://github.com/kbeckman/commish'
  spec.license       = 'MIT'

  # This should track the oldest supported version of MRI...
  spec.required_ruby_version = '>= 2.3'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_development_dependency 'bundler',  '~> 1.16'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'rspec',    '~> 3.0'
  spec.add_development_dependency 'rubocop',  '~> 0.57'
end
