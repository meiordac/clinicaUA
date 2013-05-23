class CreateEmployeeTurns < ActiveRecord::Migration
  def change
    create_table :employee_turns do |t|
      t.integer :employee_id
      t.integer :turn_id

      t.timestamps
    end
  end
end
