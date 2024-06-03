# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: 'Admin::User' do
    email { Faker::Internet.email(name: Faker::Name.first_name) }
  end
end
