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

 create_table "events", primary_key: "event_id", force: :cascade do |t|
    t.string "event_host", "Google"
    t.string "title", "Women in Tech"
    t.string "desc", "Weekly lightening talks from prominent women in tech"
    t.string "addr", "4082"
    t.string "street", "East 34th Street"
    t.string "city", "New York"
    t.string "state", "NY"
    t.string "zip", "11102"
    t.bigint "created_by_user_id", null: false
    t.integer "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false          
    t.date "event_date", 2018_1_12
    t.time "event_start_time", 19:00
 end
