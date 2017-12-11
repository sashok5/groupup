# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Tag.create(name: 'Comedy', popularity: 1)
Tag.create(name: 'Foreign Languages', popularity: 1)
Tag.create(name: 'Travel', popularity: 1)
Tag.create(name: 'Movies', popularity: 1)
Tag.create(name: 'Food', popularity: 1)
Tag.create(name: 'Books', popularity: 1)
Tag.create(name: 'Health & Wellness', popularity: 1)
Tag.create(name: 'Music', popularity: 1)
Tag.create(name: 'Art', popularity: 1)
Tag.create(name: 'Wine Tasting', popularity: 1)
Tag.create(name: 'Cooking', popularity: 1)
Tag.create(name: 'Politics', popularity: 1)
Tag.create(name: 'Women’s Empowerment', popularity: 1)
Tag.create(name: 'Robotics', popularity: 1)
Tag.create(name: 'Public Speaking', popularity: 1)
Tag.create(name: 'Technology', popularity: 1)
Tag.create(name: 'Running', popularity: 1)
Tag.create(name: 'Programming', popularity: 1)
Tag.create(name: 'Start-ups', popularity: 1)
Tag.create(name: 'Writing', popularity: 1)

Event.create(event_host: "Google", 
 title: "Women in Tech", 
 desc: "Weekly lightening talks from prominent women in tech",
 addr: "4082", 
 street: "East 34th Street",
 city: "New York", 
 state: "NY", 
 zip: "11102", 
 created_by_user_id: 2,
 event_date: "2018-1-12", 
 event_start_time: "19:00") 

Event.create(event_host: "Amazon", 
 title: "Cloud of the Future", 
 desc: "Come learn about cloud computing and it's future in technology",
 addr: "3013", 
 street: "East 14th Street",
 city: "New York", 
 state: "NY", 
 zip: "11128", 
 created_by_user_id: 2,
 event_date: "2018-2-22", 
 event_start_time: "18:00") 
 
Event.create(event_host: "Microsoft", 
 title: "Lightening talks at Microsoft", 
 desc: "Weekly lightening talks from Microsoft engineers",
 addr: "8433", 
 street: "West 4th Street",
 city: "New York", 
 state: "NY", 
 zip: "11003", 
 created_by_user_id: 2,
 event_date: "2018-2-10", 
 event_start_time: "18:30") 

Event.create(event_host: "Brooklyn Brewery", 
 title: "Happy Hour Wine Tasting", 
 desc: "Relax with friends and our specially selected house wines",
 addr: "332", 
 street: "33rd Street",
 city: "Brooklyn", 
 state: "NY", 
 zip: "11042", 
 created_by_user_id: 2,
 event_date: "2018-1-03", 
 event_start_time: "16:00") 

Event.create(event_host: "Manhattan Yoga", 
 title: "Yoga in the Park", 
 desc: "Ring in the New Year with a relaxing morning Yoga session in Central park",
 addr: "1260", 
 street: "Central Park West",
 city: "New York", 
 state: "NY", 
 zip: "10001", 
 created_by_user_id: 2,
 event_date: "2018-1-01", 
 event_start_time: "06:00") 


