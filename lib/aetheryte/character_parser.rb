# frozen_string_literal: true

module Aetheryte
  # Parses Lodestone character profile
  class ChracterParser
    def initialize(doc:, id:)
      @id = id
      @doc = doc
      @basic_info = doc.css('.character-block__name').children.map(&:text)
    end

    # rubocop:disable Metrics/AbcSize
    # rubocop:disable Metrics/MethodLength
    def parse!
      Aetheryte::Character.new(
        id: id.to_s,
        race: basic_info[0],
        clan: clan_and_gender[:clan],
        gender: clan_and_gender[:gender],
        city_state: basic_info[4],
        grand_company: grand_company_and_rank[:grand_company],
        grand_company_rank: grand_company_and_rank[:grand_company_rank],
        profile: doc.css('.character__selfintroduction').text,
        jobs: Aetheryte::JobParser.new.parse(input: doc.css('.character__level li'))
      )
    end
    # rubocop:enable Metrics/AbcSize
    # rubocop:enable Metrics/MethodLength

    private

    attr_reader :id,
                :doc,
                :basic_info,
                :race,
                :clan,
                :gender,
                :guardian,
                :city_state,
                :grand_company,
                :gc_rank

    def clan_and_gender
      @clan_and_gender ||= basic_info[2].split('/')

      { clan: @clan_and_gender[0], gender: @clan_and_gender[1] }
    end

    def grand_company_and_rank
      @grand_company_and_rank ||= basic_info[5].split('/')

      { grand_company: @grand_company_and_rank[0], grand_company_rank: @grand_company_and_rank[1] }
    end
  end
end
