# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::CompanyUser, type: :model do
  context 'associations' do
    it { should belong_to(:company) }
    it { should belong_to(:user) }
  end
end
