class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, comment: 'Application user email'

      t.timestamps
    end
  end
end
