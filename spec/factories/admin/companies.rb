# frozen_string_literal: true

FactoryBot.define do
  factory :company, class: 'Admin::Company' do
    name { Faker::Company.name }
    email { Faker::Internet.email }
    location { Faker::Address.full_address }
  end
end
