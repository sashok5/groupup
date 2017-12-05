class CreateEventTags < ActiveRecord::Migration[5.1]
  def change
    create_table :event_tags do |t|
      t.bigint :event_id
      t.bigint :tag_id

      t.timestamps
    end

    add_index :event_tags, :event_id
    add_index :event_tags, :tag_id
    add_index :event_tags, [:event_id, :tag_id], unique: true

    add_foreign_key :event_tags, :events, column: :event_id, primary_key: :event_id
    add_foreign_key :event_tags, :tags, column: :tag_id, primary_key: :tag_id


  end
end
