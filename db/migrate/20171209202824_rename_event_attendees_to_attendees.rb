class RenameEventAttendeesToAttendees < ActiveRecord::Migration[5.1]
  def change
    rename_table :event_attendees, :attendees
  end
end
