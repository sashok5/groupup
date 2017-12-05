class Tag < ApplicationRecord
  has_and_belongs_to_many :events, join_table: "event_tags"
  has_and_belongs_to_many :users, join_table: "user_tags"
end
