class Admin::Company < ApplicationRecord
	has_many :company_users,
		class_name: 'Admin::CompanyUser',
		inverse_of: 'company'

	has_many :users, through: :company_users

	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :location, presence: true
end
