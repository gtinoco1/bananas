class CreatePostLayouts < ActiveRecord::Migration[6.0]
  def change
    create_table :post_layouts do |t|
      t.integer :photo_count
      t.integer :caption_count
      t.string :name

      t.timestamps
    end
  end
end
