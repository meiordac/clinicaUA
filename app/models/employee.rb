class Employee < ActiveRecord::Base
  attr_accessible :Academicformation, :Adress, :AssistancetoTraining, :DateTimeHolidays, :DeliveryInUniformDate, :FirstName, :Function, :HireDate, :LastName, :MaritalStatus, :OccupationSpouse, :Permissions, :Phone, :ProtectiveEquipmentDeliveryDate, :Religion, :SettlementDate, :SpouseName, :intNumberOfChildren
  has_many :employee_turns, :dependent => :delete_all
  has_many :turns, :through => :employee_turns
end
