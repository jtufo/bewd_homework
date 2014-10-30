class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :product
      t.text :product_description
      t.text :product_price

      t.timestamps
    end
  end
end
