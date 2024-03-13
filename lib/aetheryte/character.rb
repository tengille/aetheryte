# frozen_string_literal: true

module Aetheryte
  # Object for storing character information
  class Character
    attr_reader :id,
                :race,
                :clan,
                :gender,
                :city_state,
                :grand_company,
                :grand_company_rank,
                :profile

    def initialize(**args)
      args.each do |name, value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
