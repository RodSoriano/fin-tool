class CreateDemos < ActiveRecord::Migration[7.1]
  def change
    create_table :demos do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
