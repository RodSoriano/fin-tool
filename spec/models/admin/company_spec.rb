require 'rails_helper'

RSpec.describe Admin::Company, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:location) }

    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:email) }
  end
end
