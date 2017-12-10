class CreateEventAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attendees, id:false do |t|
      t.bigint :user_id
      t.bigint :event_id
      t.integer :RSVP_Status

      t.timestamps
    end

    add_index :event_attendees, :event_id
    add_index :event_attendees, :user_id
    add_index :event_attendees, [:event_id, :user_id], unique: true

    add_foreign_key :event_attendees, :events, column: :event_id, primary_key: :event_id
    add_foreign_key :event_attendees, :users, column: :user_id, primary_key: :user_id


  end
end
