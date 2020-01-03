class AddNotesToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :notes, :text
  end
end
