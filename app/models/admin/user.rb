class Admin::User < ApplicationRecord
	has_many :company_users,
		class_name: 'Admin::CompanyUser',
		inverse_of: 'user'

	has_many :companies, through: :company_users

	validates :email, presence: true, uniqueness: true
end
