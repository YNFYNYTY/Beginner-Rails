# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create name: 'Home' , city: 'masion' , rate: 10
Location.create name: 'Home2' , city: 'masion2' , rate: 10
Location.create name: 'Home3' , city: 'masion3' , rate: 10
Location.create name: 'Home4' , city: 'masion4' , rate: 10
Location.create name: 'Home5' , city: 'masion5' , rate: 10
Location.create name: 'Home6' , city: 'masion6' , rate: 10
Location.create name: 'Home7' , city: 'masion7' , rate: 10
Location.create name: 'Home8' , city: 'masion8' , rate: 10


Visit.create location_id: 1, user_name: 'Ben', from_date: '2014-07-22 08:27:49.378076', to_date: '2014-07-22 08:27:49.378012'
Visit.create location_id: 2 , user_name: 'Benny' , from_date: '2014-07-22 08:27:49.3712076', to_date: '2014-07-22 08:27:49.1278012'
Visit.create location_id: 1, user_name: 'Patxi', from_date: '2014-07-22 08:27:49.378076', to_date: '2014-07-22 08:27:49.338012'
Visit.create location_id: 1 , user_name: 'Juan' , from_date: '2014-07-22 08:27:49.3712076', to_date: '2014-07-22 08:27:49.1278012'