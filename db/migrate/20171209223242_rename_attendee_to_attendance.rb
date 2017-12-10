class RenameAttendeeToAttendance < ActiveRecord::Migration[5.1]
  def change
    rename_table :attendees, :attendances
  end
end
