require 'rails_helper'

RSpec.describe Location, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
	a = Location.new
	a.name = 'madrid'
	a.city = 'Madrid'
	a.rate = 10
	a.save

# describe 'one' do
# 	it 'return the name for the file with the id given' do
# 		a = Location.new
# 		place = a.find(5)
# 		expect(Location.iron_findbyid(5)).to eq(place)
# 	end

describe 'one' do
	it 'return the name for the file with the id given' do
		a = Location.create name:'navarra' , city: 'Navarra'
		expect(Location.iron_findbyid(a.id)).to eq(7)
	end



end
