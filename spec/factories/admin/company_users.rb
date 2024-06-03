# frozen_string_literal: true

FactoryBot.define do
  factory :company_user, class: 'Admin::CompanyUser' do
    association :company
    association :user
    admin { false }
  end
end
