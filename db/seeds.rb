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
 desc: "Weekly lightening talks from prominent women in tech.",
 addr: "4082", 
 street: "East 34th Street",
 city: "New York", 
 state: "NY", 
 zip: "11102", 
 created_by_user_id: 2,
 event_date: "2018-1-12", 
 event_start_time: "19:00")

Event.create(event_host: "Google", 
 title: "Women in Tech", 
 desc: "Weekly lightening talks from prominent women in tech.",
 addr: "4082", 
 street: "East 34th Street",
 city: "New York", 
 state: "NY", 
 zip: "11102", 
 created_by_user_id: 2,
 event_date: "2018-1-19", 
 event_start_time: "19:00")

Event.create(event_host: "Google", 
 title: "Women in Tech", 
 desc: "Weekly lightening talks from prominent women in tech.",
 addr: "4082", 
 street: "East 34th Street",
 city: "New York", 
 state: "NY", 
 zip: "11102", 
 created_by_user_id: 2,
 event_date: "2018-1-26", 
 event_start_time: "19:00")

Event.create(event_host: "Amazon", 
 title: "Cloud of the Future", 
 desc: "Come learn about cloud computing and it's future in technology.",
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
 desc: "Weekly lightening talks from Microsoft engineers.",
 addr: "8433", 
 street: "West 4th Street",
 city: "New York", 
 state: "NY", 
 zip: "11003", 
 created_by_user_id: 2,
 event_date: "2018-2-10", 
 event_start_time: "18:30") 

Event.create(event_host: "Microsoft", 
 title: "Lightening talks at Microsoft", 
 desc: "Weekly lightening talks from Microsoft engineers.",
 addr: "8433", 
 street: "West 4th Street",
 city: "New York", 
 state: "NY", 
 zip: "11003", 
 created_by_user_id: 2,
 event_date: "2018-2-17", 
 event_start_time: "18:30")

Event.create(event_host: "Microsoft", 
 title: "Lightening talks at Microsoft", 
 desc: "Weekly lightening talks from Microsoft engineers.",
 addr: "8433", 
 street: "West 4th Street",
 city: "New York", 
 state: "NY", 
 zip: "11003", 
 created_by_user_id: 2,
 event_date: "2018-2-24", 
 event_start_time: "18:30")

Event.create(event_host: "Brooklyn Brewery", 
 title: "Happy Hour Wine Tasting", 
 desc: "Relax with friends and our specially selected house wines.",
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
 desc: "Ring in the New Year with a relaxing morning Yoga session in Central park.",
 addr: "1260", 
 street: "Central Park West",
 city: "New York", 
 state: "NY", 
 zip: "10001", 
 created_by_user_id: 2,
 event_date: "2018-1-01", 
 event_start_time: "06:00") 

Event.create(event_host: "Wino", 
 title: "Toastmasters at Wino", 
 desc: "Practice public Speaking while sampling our lastest wine selections.",
 addr: "4038", 
 street: "Austen Street",
 city: "Forest Hills", 
 state: "NY", 
 zip: "11058", 
 created_by_user_id: 2,
 event_date: "2018-2-01", 
 event_start_time: "19:00") 

Event.create(event_host: "Manhattan Roadrunner", 
 title: "Weekly morning jog", 
 desc: "Make new friends while getting in shape, come join our morning jogging group!",
 addr: "1350", 
 street: "Central Park South",
 city: "New York", 
 state: "NY", 
 zip: "10012", 
 created_by_user_id: 2,
 event_date: "2018-1-12", 
 event_start_time: "05:30") 

Event.create(event_host: "Manhattan Roadrunner", 
 title: "Weekly morning jog", 
 desc: "Make new friends while getting in shape, come join our morning jogging group!",
 addr: "1350", 
 street: "Central Park South",
 city: "New York", 
 state: "NY", 
 zip: "10012", 
 created_by_user_id: 2,
 event_date: "2018-1-19", 
 event_start_time: "05:30")

Event.create(event_host: "Manhattan Roadrunner", 
 title: "Weekly morning jog", 
 desc: "Make new friends while getting in shape, come join our morning jogging group!",
 addr: "1350", 
 street: "Central Park South",
 city: "New York", 
 state: "NY", 
 zip: "10012", 
 created_by_user_id: 2,
 event_date: "2018-1-26", 
 event_start_time: "05:30")

Event.create(event_host: "Queens Robotics Club", 
 title: "Weekend Robot Group-Up", 
 desc: "Group-up and share ideas with other robotics enthusiasts!",
 addr: "3614", 
 street: "38th street",
 city: "LIC", 
 state: "NY", 
 zip: "11103", 
 created_by_user_id: 2,
 event_date: "2018-3-03", 
 event_start_time: "12:00") 

Event.create(event_host: "Queens Robotics Club", 
 title: "Weekend Robot Group-Up", 
 desc: "Group-up and share ideas with other robotics enthusiasts!",
 addr: "3614", 
 street: "38th street",
 city: "LIC", 
 state: "NY", 
 zip: "11103", 
 created_by_user_id: 2,
 event_date: "2018-3-10", 
 event_start_time: "12:00") 

Event.create(event_host: "Queens Robotics Club", 
 title: "Weekend Robot Group-Up", 
 desc: "Group-up and share ideas with other robotics enthusiasts!",
 addr: "3614", 
 street: "38th street",
 city: "LIC", 
 state: "NY", 
 zip: "11103", 
 created_by_user_id: 2,
 event_date: "2018-3-17", 
 event_start_time: "12:00") 

Event.create(event_host: "NY Comics", 
 title: "Joke Writting Workshop", 
 desc: "Test out new material with seasoned pros.",
 addr: "3090", 
 street: "8th Avenue",
 city: "Brooklyn", 
 state: "NY", 
 zip: "10945", 
 created_by_user_id: 2,
 event_date: "2018-2-01", 
 event_start_time: "19:00") 

Event.create(event_host: "Mama's Bakery", 
 title: "Cupcake Workshop", 
 desc: "Learn how to make edible works of art.",
 addr: "6089", 
 street: "67 street",
 city: "Staten Island", 
 state: "NY", 
 zip: "10980", 
 created_by_user_id: 2,
 event_date: "2017-12-18", 
 event_start_time: "18:00") 

Event.create(event_host: "Mama's Bakery", 
 title: "Kid's Gingerbread House Workshop", 
 desc: "Learn to make beautiful and festive gingerbread abodes. Fun for the whole family! Ages 5 and up.",
 addr: "6089", 
 street: "67 street",
 city: "Staten Island", 
 state: "NY", 
 zip: "10980", 
 created_by_user_id: 2,
 event_date: "2017-12-16", 
 event_start_time: "14:00") 

Event.create(event_host: "Queens Action Committee", 
 title: "Weekly Community Meeting", 
 desc: "Group-up and discussion different issues affecting our community.",
 addr: "7349", 
 street: "85th street",
 city: "Elmhurst", 
 state: "NY", 
 zip: "10379", 
 created_by_user_id: 2,
 event_date: "2018-1-06", 
 event_start_time: "18:00") 

Event.create(event_host: "Queens Action Committee", 
 title: "Weekly Community Meeting", 
 desc: "Group-up and discussion different issues affecting our community.",
 addr: "7349", 
 street: "85th street",
 city: "Elmhurst", 
 state: "NY", 
 zip: "10379", 
 created_by_user_id: 2,
 event_date: "2018-1-13", 
 event_start_time: "18:00") 

Event.create(event_host: "Queens Action Committee", 
 title: "Weekly Community Meeting", 
 desc: "Group-up and discussion different issues affecting our community.",
 addr: "7349", 
 street: "85th street",
 city: "Elmhurst", 
 state: "NY", 
 zip: "10379", 
 created_by_user_id: 2,
 event_date: "2018-1-20", 
 event_start_time: "18:00") 

Event.create(event_host: "Brooklyn Movie Lovers", 
 title: "Movie Night", 
 desc: "Make friends and watch classics from Hollywood's Golden Age!",
 addr: "6709", 
 street: "23rd street",
 city: "Brooklyn", 
 state: "NY", 
 zip: "10409", 
 created_by_user_id: 2,
 event_date: "2018-1-05", 
 event_start_time: "18:00") 

Event.create(event_host: "Piazza Pizza", 
 title: "Pizza Making Class", 
 desc: "Learn how to make classic New York pizza ",
 addr: "3987", 
 street: "50th street",
 city: "Bronx", 
 state: "NY", 
 zip: "10209", 
 created_by_user_id: 2,
 event_date: "2018-02-17", 
 event_start_time: "14:00") 

Event.create(event_host: "American Bar and Grill", 
 title: "Sample Tuesday", 
 desc: "Sample our new sliders and draft beer, 1/2 off!",
 addr: "7901", 
 street: "14th Street",
 city: "New York", 
 state: "NY", 
 zip: "10092", 
 created_by_user_id: 2,
 event_date: "2017-12-12", 
 event_start_time: "18:00") 

Event.create(event_host: "Bronx Book Club", 
 title: "Weekly Book Club Meeting", 
 desc: "Come discuss the letest bestsellers!",
 addr: "7029", 
 street: "54th street",
 city: "Bronx", 
 state: "NY", 
 zip: "18005", 
 created_by_user_id: 1,
 event_date: "2018-01-10", 
 event_start_time: "18:30") 

Event.create(event_host: "Bronx Book Club", 
 title: "Weekly Book Club Meeting", 
 desc: "Come discuss the letest bestsellers!",
 addr: "7029", 
 street: "54th street",
 city: "Bronx", 
 state: "NY", 
 zip: "18005", 
 created_by_user_id: 1,
 event_date: "2018-01-17", 
 event_start_time: "18:30") 

Event.create(event_host: "Bronx Book Club", 
 title: "Weekly Book Club Meeting", 
 desc: "Come discuss the letest bestsellers!",
 addr: "7029", 
 street: "54th street",
 city: "Bronx", 
 state: "NY", 
 zip: "18005", 
 created_by_user_id: 1,
 event_date: "2018-01-24", 
 event_start_time: "18:30") 

Event.create(event_host: "Art & Technology", 
 title: "Art & Tech Group-Up", 
 desc: "Learn about how to use the latest technology when creating your next masterpiece",
 addr: "4982", 
 street: "34th street",
 city: "New York", 
 state: "NY", 
 zip: "10096", 
 created_by_user_id: 1,
 event_date: "2018-2-08", 
 event_start_time: "18:00") 

Event.create(event_host: "New York Comedy Club", 
 title: "Open Mic Night", 
 desc: "Come and try out your new material!",
 addr: "7809", 
 street: "18th street",
 city: "New York", 
 state: "NY", 
 zip: "11908", 
 created_by_user_id: 1,
 event_date: "2018-2-17", 
 event_start_time: "20:00") 

