require 'rails_helper'

RSpec.describe Visit, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'returns the from_date_is_before_to_date error' do
  # visit1 = Visit.create location_id: 1, user_name: 'Ben', from_date: '2015-07-22 08:27:49.378076', to_date: '2014-07-22 08:27:49.378012'
  visit1 = Visit.new location_id: 1, user_name: 'Ben', from_date: Date.today - 1.hour, to_date: Date.today
  	expect(visit1.errors[:from_date]).to eq(["can't be from_date.to_i > to_date.to_i"])
  end

  it 'returns the from_date_in_the_future error' do
  # visit1 = Visit.create location_id: 1, user_name: 'Ben', from_date: '2015-07-22 08:27:49.378076', to_date: '2014-07-22 08:27:49.378012'
  visit2 = Visit.new location_id: 2, user_name: 'Benny', from_date: Time.now, to_date: Time.now + 1.hour
  	visit2.valid?
  	expect(visit2.errors[:from_date]).to eq('cant be from_date > Time.now')
  end


# person.errors.full_message(:name, 'is invalid')  => "Name is invalid"


end
