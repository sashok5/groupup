class EventAttendee < ActiveRecord::Base
  belongs_to :event
  has_many :users

  validates :user_id, presence: true
  validates :event_id, presence: true


end
