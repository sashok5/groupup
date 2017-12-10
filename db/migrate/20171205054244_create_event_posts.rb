class CreateEventPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :event_posts do |t|
      t.string :content
      t.bigint :user_id
      t.bigint :event_id
      t.timestamps
    end
    add_index :event_posts, [:user_id, :created_at]
    add_index :event_posts, :event_id

    add_foreign_key :event_posts, :users, column: :user_id, primary_key: :user_id
    add_foreign_key :event_posts, :events, column: :event_id, primary_key: :event_id
  end
end
