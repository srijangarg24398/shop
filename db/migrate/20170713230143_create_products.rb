class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true, foreign_key: true
      t.string :product_name
      t.integer :product_cost
      t.integer :product_quantity
      t.string :product_image
      t.text :product_description

      t.timestamps null: false
    end
  end
end
