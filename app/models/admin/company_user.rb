class Admin::CompanyUser < ApplicationRecord
	belongs_to :company,
		class_name: 'Admin::Company',
		foreign_key: 'company_id'

	belongs_to :user,
		class_name: 'Admin::User',
		foreign_key: 'user_id'

	validates :admin, presence: true
end
