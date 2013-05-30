class Inventory < ActiveRecord::Base
  attr_accessible :codeproduct, :descto, :finalcost, :image, :name, :netvalue, :quantity, :reutilizable
end
