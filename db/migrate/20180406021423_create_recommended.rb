class CreateRecommended < ActiveRecord::Migration[5.1]
  def change
    create_table :recommended do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :rank
    end
  end
end
