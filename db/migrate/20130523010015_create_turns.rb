class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.boolean :validshift
      t.date :shifhtstartime
      t.date :shiftendtime

      t.timestamps
    end
  end
end
