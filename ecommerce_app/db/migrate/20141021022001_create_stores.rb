class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :store_name
      t.text :product

      t.timestamps
    end
  end
end
