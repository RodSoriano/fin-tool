# frozen_string_literal: true

module Accounting
  class Bank < ApplicationRecord
    # Validates that the city/country code provided is in the format: USA, NYC, etc.
    CITY_COUNTRY_CODE_REGEX = /\A[a-zA-Z]+\z/

    # Validates the swift code is in the format: UNCRITMMXXX
    SWIFT_CODE_REGEX = /\A[a-zA-Z0-9]+\z/

    # Validates the url provided is in the format: https://example.com | http://example.com
    URL_REGEX = %r{\Ahttps?:\/\/(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(?:\/.*)?\z} # rubocop:disable Style/RedundantRegexpEscape

    validates :name, :country_code, :city_code, :routing_number, :swift_code, :website,
              presence: true
    validates :country_code, :city_code, :swift_code, uniqueness: { case_sensitive: true }
    validates :routing_number, uniqueness: true
    validates :country_code, :city_code, length: { is: 3 }
    validates :routing_number, length: { in: 9..12 }
    validates :swift_code, length: { in: 8..12 }
    validates :routing_number, numericality: { only_integer: true }
    validates :country_code, format: { with: CITY_COUNTRY_CODE_REGEX }
    validates :city_code, format: { with: CITY_COUNTRY_CODE_REGEX }
    validates :swift_code, format: { with: SWIFT_CODE_REGEX }
    validates :website, format: { with: URL_REGEX }

    # Callbacks
    before_validation :upcase_country_and_city_code

    private

    def upcase_country_and_city_code
      self.country_code = country_code.upcase if country_code.present?
      self.city_code = city_code.upcase if city_code.present?
      self.swift_code = swift_code.upcase if swift_code.present?
    end
  end
end
