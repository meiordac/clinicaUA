class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.boolean :reutilizable
      t.float :finalcost
      t.integer :quantity
      t.string :name
      t.string :image
      t.string :codeproduct
      t.float :netvalue
      t.float :descto

      t.timestamps
    end
  end
end
