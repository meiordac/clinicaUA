class EmployeeTurn < ActiveRecord::Base
  attr_accessible :employee_id, :turn_id
  belongs_to :employee
  belongs_to :turn
end
