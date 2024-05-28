class Admin::Company < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :location, presence: true
end
