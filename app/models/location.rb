class Location < ActiveRecord::Base #ORM object relational mapping
	has_many :visits
	def self.iron_findbyname(value)
		Location.where(name: value)
	end

	def self.iron_findbyid(value)
		Location.where(id: value)
	end

	def self.last_created(value)
		Location.limit(value).order("created_at DESC")
	end

end

