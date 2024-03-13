# frozen_string_literal: true

require 'pry'

$LOAD_PATH.push File.expand_path('../lib', __dir__)
require_relative 'lib/version.rb'

Gem::Specification.new do |s|
  s.name = 'aetheryte'
  s.version = Aetheryte::VERSION
  s.summary = 'Aetheryte'
  s.authors = ['tengille']
  s.email = 'melitengille@gmail.com'
  s.files = ['lib/aetheryte.rb', 'lib/character_parser.rb']
  s.license = 'MIT'

  s.add_dependency 'nokogiri'
  s.add_development_dependency 'pry-byebug'

  s.required_ruby_version = '>= 3.1.1'

  s.require_paths = ['lib']
end
