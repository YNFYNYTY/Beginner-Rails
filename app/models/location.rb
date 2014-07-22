require 'pry'
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
	def total_visits_in_month_of_year(month , year)
		visits = self.visits
		count=0
		visits.each do |visit|
			date = visit.from_date.to_date
			month_visit=date.strftime("%m").to_i
			year_visit=date.strftime("%Y").to_i
			binding.pry
			if month_visit == month and year_visit==year
				count+=1
			end
		end

		count
	end

end

