class Visit < ActiveRecord::Base
	belongs_to :location
	validates :from_date, presence: true
	validates :to_date, presence: true
	validates :user_name, presence: true
	validates_format_of :user_name, :with => /[a-z]/
	validates :location_id, presence: :true
	validate :from_date_is_before_to_date
	validate :from_date_in_the_future

# def from_date_is_before_to_date(visit)
# 	 	if visit.from_date.to_i < visit.to_date.to_i
# 	 	errors.add(:from_date, "can't be after to date")
#  		end
# end

def from_date_is_before_to_date
 	if from_date.to_i < to_date.to_i
	 	errors.add(:from_date, "can't be from_date.to_i > to_date.to_i")
	end
end

def from_date_in_the_future
 	if from_date > Time.now
	 	errors.add(:from_date, "cant be from_date > Time.now")
	end
end

end

