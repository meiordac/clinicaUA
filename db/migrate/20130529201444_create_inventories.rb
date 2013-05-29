class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.boolean :reutilizable
      t.float :cost
      t.integer :quantity
      t.string :name

      t.timestamps
    end
  end
end
