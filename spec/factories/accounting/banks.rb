# frozen_string_literal: true

FactoryBot.define do
  factory :bank, class: 'Accounting::Bank' do
    name { Faker::Bank.name }
    country_code { Faker::Address.country_code_long[0..2].upcase }
    city_code { Faker::Address.city_prefix[0..2].upcase }
    routing_number { Faker::Bank.routing_number }
    swift_code { Faker::Bank.swift_bic }
    website { Faker::Internet.url(scheme: 'https') }
  end
end
