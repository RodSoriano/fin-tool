class CreateDemos < ActiveRecord::Migration[7.1]
  # TODO: delete the demo model and all its related files
  # once the first release is merged into main
  def change
    create_table :demos do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
