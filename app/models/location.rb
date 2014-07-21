class Location < ActiveRecord::Base #ORM object relational mapping
	def self.iron_findbyname(value)
		Location.where(name: value)
	end

	def self.iron_findbyid(value)
		Location.where(id: value)
	end
end
 
