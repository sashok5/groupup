class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags, primary_key: "tag_id", id: :bigint do |t|
      t.string :name
      t.integer :popularity

      t.timestamps
    end
  end
end
