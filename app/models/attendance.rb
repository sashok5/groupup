class Attendance < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  self.primary_keys = :user_id, :event_id


  validates :user_id, presence: true
  validates :event_id, presence: true

  def self.rsvp_status(event, user)

    @attendance = Attendance.find_by(:event_id => event.id, :user_id=> user.id)

    case @attendance.RSVP_Status
      when 1
        "Yes"
      when 2
        "No"
      when 3
        "Maybe"
      else
        "Undecided"
    end


  end

  def self.rsvp(event, user, rsvp)
    attendance = Attendance.find_by(:event_id => event.id, :user_id=> user.id)
    attendance.update_attributes(:RSVP_Status=> rsvp)
  end


end
