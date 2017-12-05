class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table "events", primary_key: "event_id", id: :bigint, force: :cascade do |t|
      t.string :event_host
      t.string :title
      t.string :desc
      t.string :addr
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.bigint :created_by_user_id, null: false
      t.integer :event_type
      t.timestamps
    end

    add_foreign_key :events, :users, column: :created_by_user_id, primary_key: :user_id

  end
end
