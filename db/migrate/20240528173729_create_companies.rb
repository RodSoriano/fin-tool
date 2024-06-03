class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name, comment: 'Name of the company'
      t.string :email, comment: 'Email of the company'
      t.string :location, comment: 'Physical location of the company, can be an address'

      t.timestamps
    end
  end
end
