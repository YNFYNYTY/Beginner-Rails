require 'rails_helper'

RSpec.describe Location, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
  xit 'counts visits by months and locations have to return 1 when the location have one visit' do 
  	location = Location.create name: 'Home' , city: 'Bilbao'
  	visit_params = {
  		location_id: location.id,
  		user_name: 'Ben',
  		from_date: '2014-07-22 08:27:49.378076',
  		to_date: '2014-07-22 08:27:49.378012'
  	}

  	visit = Visit.create(visit_params)
  	expect(location.total_visits_in_month_of_year(7, 2014)).to eq(1)
  end
  xit 'counts visits by months and locations have to return 0 when the location have zero visit' do 
  	location = Location.create name: 'Home' , city: 'Bilbao'
  	visit_params = {
  		location_id: location.id,
  		user_name: 'Ben',
  		from_date: '2014-07-22 08:27:49.378076',
  		to_date: '2014-07-22 08:27:49.378012'
  	}

  	visit = Visit.create(visit_params)
  	expect(location.total_visits_in_month_of_year(6, 2014)).to eq(0)
  end

  xit 'return false when a visit has not from_date presence' do
    v = Visit.create location_id: 1, user_name: 'Ben', from_date: '2014-07-22 08:27:49.378076', to_date: '2014-07-22 08:27:49.378012'
    # visit_params = {
    #   location_id: location.id,
    #   user_name: 'Ben',
    #   from_date: '2014-07-22 08:27:49.378076',
    #   to_date: '2014-07-22 08:27:49.378012'
    # }

    visit = Visit.create(visit_params)
    expect(l.from_date).to eq()
  end


end












# 	a = Location.new
# 	a.name = 'Rajoy'
# 	a.city = 'Madrid'
# 	a.rate = 8
# 	a.save

# Location.create name: 'Home' , city: 'masion' , rate: 10
# Location.create name: 'Home2' , city: 'masion2' , rate: 10
# Location.create name: 'Home3' , city: 'masion3' , rate: 10
# Location.create name: 'Home4' , city: 'masion4' , rate: 10
# Location.create name: 'Home5' , city: 'masion5' , rate: 10
# Location.create name: 'Home6' , city: 'masion6' , rate: 10
# Location.create name: 'Home7' , city: 'masion7' , rate: 10
# Location.create name: 'Home8' , city: 'masion8' , rate: 10


# # describe 'one' do
# # 	it 'return the name for the file with the id given' do
# # 		a = Location.new
# # 		place = a.find(5)
# # 		expect(Location.iron_findbyid(5)).to eq(place)
# # 	end


# # ### Homework by Martin
# # * Write test for #last_created
# # * Implement #in_spain
# # * Write tests for #in_spain
# # * Try to define scopes instead of last_created
# # * Find out how scopes work

# describe 'one' do
# 	it 'return the name for the file with the id given' do
# 		expect(a.name).to eq('Rajoy')
# 	end

# 	xit 'return the last 5 names of the 5 names given' do
# 		expect(Location.last_created(5).to eq())
# 	end




# end
