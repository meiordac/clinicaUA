class Inventory < ActiveRecord::Base
  attr_accessible :cost, :name, :quantity, :reutilizable
end
