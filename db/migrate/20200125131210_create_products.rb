class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :category_id, null: false
      t.string :description, null: false
      t.float :price, null: false
      t.integer :make_year, null: false

      t.timestamps
    end
  end
end
