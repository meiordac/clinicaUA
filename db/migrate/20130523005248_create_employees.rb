class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Adress
      t.string :Phone
      t.string :Function
      t.string :MaritalStatus
      t.string :Academicformation
      t.string :intNumberOfChildren
      t.string :Religion
      t.string :SpouseName
      t.string :OccupationSpouse
      t.string :AssistancetoTraining
      t.date :HireDate
      t.date :SettlementDate
      t.date :DeliveryInUniformDate
      t.date :ProtectiveEquipmentDeliveryDate
      t.string :Permissions
      t.string :DateTimeHolidays

      t.timestamps
    end
  end
end
