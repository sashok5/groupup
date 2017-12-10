class Tag < ApplicationRecord

  has_and_belongs_to_many :users, join_table: "user_tags"
  has_and_belongs_to_many :events, join_table: "event_tags"

  def alltags
    @all_tags = Tag.all
  end


end
