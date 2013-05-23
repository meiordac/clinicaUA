class ChangeDataTypeForTurn < ActiveRecord::Migration
  def self.up
    
    change_column :turns, :shifhtstartime, :datetime
     change_column :turns, :shiftendtime, :datetime
    
  end
 
  def self.down
     change_column :turns, :shifhtstartime, :date
     change_column :turns, :shiftendtime, :date
  end
  
end
