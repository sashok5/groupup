class CreateUserTags < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tags do |t|
      t.bigint :user_id
      t.bigint :tag_id

      t.timestamps
    end

    add_index :user_tags, :tag_id
    add_index :user_tags, :user_id
    add_index :user_tags, [:user_id, :tag_id], unique: true

    add_foreign_key :user_tags, :users, column: :user_id, primary_key: :user_id
    add_foreign_key :user_tags, :tags, column: :tag_id, primary_key: :tag_id


  end
end
