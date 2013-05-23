class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :typecleaning
      t.string :area
      t.string :status
      t.string :unit
      t.string :building
      t.string :floor

      t.timestamps
    end
  end
end
