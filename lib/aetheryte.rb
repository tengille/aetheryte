# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'ostruct'

require_relative 'character'
require_relative 'character_parser'
require_relative 'job_parser'

# Hear. Feel. Think.
module Aetheryte
  NO_ID_ERR_MSG = 'No :id provided'
  NOT_FOUND_MSG = 'Invalid :id, Not found'
  BASE_URL = 'https://na.finalfantasyxiv.com/lodestone/character'

  class Error < StandardError; end

  # :id must be a Integer or String of a Lodestone character URL
  # example: https://na.finalfantasyxiv.com/lodestone/character/48513463/
  def self.character(id: nil)
    raise Error, NO_ID_ERR_MSG unless id

    url = "#{BASE_URL}/#{id}"
    res = URI.parse(url).open

    doc = Nokogiri::HTML(res)
    Aetheryte::ChracterParser.new(doc:, id:).parse!
  rescue OpenURI::HTTPError
    raise Error, NOT_FOUND_MSG
  end
end
