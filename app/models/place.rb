class Place < ActiveRecord::Base
  attr_accessible :area, :building, :floor, :status, :typecleaning, :unit
end
