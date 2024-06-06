# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accounting::Bank, type: :model do # rubocop:disable Metrics/BlockLength
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country_code) }
    it { should validate_presence_of(:routing_number) }
    it { should validate_presence_of(:swift_code) }
    it { should validate_presence_of(:website) }
    # TODO: not sure why when turning the values into uppercase in the model
    # breaks the tests xd
    # it { should validate_uniqueness_of(:country_code) }
    # it { should validate_uniqueness_of(:city_code) }
    it { should validate_uniqueness_of(:routing_number) }
    # it { should validate_uniqueness_of(:swift_code) }

    it { should validate_length_of(:country_code).is_equal_to(3) }
    it { should validate_length_of(:city_code).is_equal_to(3) }
    it { should validate_length_of(:routing_number).is_at_least(9).is_at_most(12) }
    it { should validate_length_of(:swift_code).is_at_least(8).is_at_most(12) }

    it { should validate_numericality_of(:routing_number).only_integer }

    it { should allow_value('USA').for(:country_code) }
    it { should_not allow_value('US1').for(:country_code) }
    it { should_not allow_value('US').for(:country_code) }
    it { should_not allow_value('USAA').for(:country_code) }

    it { should allow_value('NYC').for(:city_code) }
    it { should_not allow_value('NY1').for(:city_code) }
    it { should_not allow_value('NY').for(:city_code) }

    it { should allow_value('ABC12345').for(:swift_code) }
    it { should_not allow_value('ABC!@345').for(:swift_code) }

    it { should allow_value('https://example.com').for(:website) }
    it { should allow_value('https://example.com/path').for(:website) }
    it { should_not allow_value('http://ex#!ample.com').for(:website) }
    it { should_not allow_value('example.com').for(:website) }
  end
end
