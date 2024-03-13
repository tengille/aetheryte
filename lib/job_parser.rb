# frozen_string_literal: true

module Aetheryte
  # Parses Job input
  class JobParser
    JOBS = {
      'Gladiator' => 'Gladiator',
      'Marauder' => 'Marauder',
      'Dark Knight' => 'Knight',
      'Gunbreaker' => 'Gunbreaker',
      'Conjurer' => 'Conjurer',
      'Scholar' => 'Scholar',
      'Astrologian' => 'Astrologian',
      'Sage' => 'Sage',
      'Pugilist' => 'Pugilist',
      'Lancer' => 'Lancer',
      'Rogue' => 'Rogue',
      'Samurai' => 'Samurai',
      'Reaper' => 'Reaper',
      'Archer' => 'Archer',
      'Machinist' => 'Machinist',
      'Dancer' => 'Dancer',
      'Thaumaturge' => 'Thaumaturge',
      'Summoner / Arcanist' => 'Summoner / Arcanist',
      'Red Mage' => 'Red Mage',
      'Blue Mage (Limited Job)' => 'Blue Mage',
      'Carpenter' => 'Carpenter',
      'Blacksmith' => 'Blacksmith',
      'Armorer' => 'Armorer',
      'Goldsmith' => 'Goldsmith',
      'Leatherworker' => 'Leatherworker',
      'Weaver' => 'Weaver',
      'Alchemist' => 'Alchemist',
      'Culinarian' => 'Culinarian',
      'Miner' => 'Miner',
      'Botanist' => 'Botanist',
      'Fisher' => 'Fisher'
    }.freeze

    attr_reader :output

    def parse(input:)
      input.map do |li_node|
        job_name = JOBS[li_node.children.first.attributes['data-tooltip'].value]
        job_level = li_node.children.last.text

        { job: job_name, level: job_level }
      end
    end
  end
end
