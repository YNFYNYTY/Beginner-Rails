require 'rails_helper'

RSpec.describe Location, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
	a = Location.new
	a.name = 'Rajoy'
	a.city = 'Madrid'
	a.rate = 8
	a.save

# Location.create name: 'Home' , city: 'masion' , rate: 10
# Location.create name: 'Home2' , city: 'masion2' , rate: 10
# Location.create name: 'Home3' , city: 'masion3' , rate: 10
# Location.create name: 'Home4' , city: 'masion4' , rate: 10
# Location.create name: 'Home5' , city: 'masion5' , rate: 10
# Location.create name: 'Home6' , city: 'masion6' , rate: 10
# Location.create name: 'Home7' , city: 'masion7' , rate: 10
# Location.create name: 'Home8' , city: 'masion8' , rate: 10


class Location < ActiveRecord::Base #ORM object relational mapping
	def self.last_created(value)
		Location.limit(value).order("created_at DESC")
	end

end


# describe 'one' do
# 	it 'return the name for the file with the id given' do
# 		a = Location.new
# 		place = a.find(5)
# 		expect(Location.iron_findbyid(5)).to eq(place)
# 	end


# ### Homework by Martin
# * Write test for #last_created
# * Implement #in_spain
# * Write tests for #in_spain
# * Try to define scopes instead of last_created
# * Find out how scopes work

describe 'one' do
	it 'return the name for the file with the id given' do
		expect(a.name).to eq('Rajoy')
	end

	it 'return the last 5 names of the 5 names given' do
		expect(Location.last_created(5).to eq())
	end




end
