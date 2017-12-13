class AddSnippetImageToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :snippet_image, :string
  end
end
