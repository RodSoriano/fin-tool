class CreateJoinTableCompanyUser < ActiveRecord::Migration[7.1]
  def change
    create_join_table :companies, :users do |t|
      t.primary_key [:company_id, :user_id], comment: 'This is a composite primary key out of company and user ids'
      t.boolean :admin, comment: 'This field indicates whether a user is an admin of the company or not'
      t.timestamps

      t.index [:company_id, :user_id]
      t.index [:user_id, :company_id]
    end
  end
end
