class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "created_by_user_id"
  has_and_belongs_to_many :tags, join_table: "event_tags"
  has_many :attendances
  has_many :users, through: :attendances
  default_scope -> { order('event_date ASC') }
  validates :desc, presence: true, length: { maximum: 1000 }
  validates :created_by_user_id, presence: true

  def self.upcoming(after = DateTime.now, limit = 100)
    @upcoming_events =
            where('event_date > ?', after)

  end



end
