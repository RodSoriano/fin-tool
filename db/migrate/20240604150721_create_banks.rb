class CreateBanks < ActiveRecord::Migration[7.1]
  def change
    create_table :banks do |t|
      t.string :name, comment: 'Bank name'
      t.string :country_code, comment: 'Country code'
      t.string :city_code, comment: 'City code'
      t.string :routing_number, comment: 'Routing number'
      t.string :swift_code, comment: 'Swift code'
      t.string :website, comment: 'Website'

      t.timestamps
    end
  end
end
