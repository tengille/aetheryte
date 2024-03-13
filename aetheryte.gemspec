# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __dir__)
require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name     = 'aetheryte'
  s.version  = Aetheryte::VERSION
  s.summary  = 'Aetheryte'
  s.authors  = ['tengille']
  s.email    = 'melitengille@gmail.com'
  s.license  = 'MIT'
  s.homepage = 'https://github.com/tengille/aetheryte'
  s.metadata = { 'rubygems_mfa_required' => 'true' }

  s.files    = Dir['./**/**']

  s.add_dependency 'nokogiri', '~> 1.16'
  s.add_development_dependency 'pry-byebug', '~> 3.10'

  s.required_ruby_version = '>= 3.1.1'

  s.require_paths = ['lib']
end
