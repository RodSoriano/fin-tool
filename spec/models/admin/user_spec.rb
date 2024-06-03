# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::User, type: :model do
  context 'associations' do
    it { should have_many(:company_users) }
    it { should have_many(:companies).through(:company_users) }
  end

  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end
