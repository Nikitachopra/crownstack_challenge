class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :cat_type, null: false
      t.integer :model_year, null: false

      t.timestamps
    end
  end
end
