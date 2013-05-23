class Turn < ActiveRecord::Base
  attr_accessible :shifhtstartime, :shiftendtime, :validshift
  has_many :employee_turns, :dependent => :delete_all
  has_many :employees, :through => :employee_turns
end
