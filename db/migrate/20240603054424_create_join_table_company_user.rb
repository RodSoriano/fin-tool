class CreateJoinTableCompanyUser < ActiveRecord::Migration[7.1]
  def change
    create_join_table :company, :users do |t|
      t.boolean :admin, comment: 'This field indicates whether a user is an admin of the company or not'

      t.timestamps

      t.index [:company_id, :user_id]
      t.index [:user_id, :company_id]
    end
  end
end
