require 'rails_helper'

RSpec.describe Admin::Company, type: :model do
  context 'associations' do
    it { should have_many(:company_users) }
    it { should have_many(:users).through(:company_users) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:location) }

    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:email) }
  end
end
