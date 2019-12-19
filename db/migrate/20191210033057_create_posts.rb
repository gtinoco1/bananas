class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.text :ingredients
      t.text :instructions
      t.string :category
      t.text :caption1
      t.text :caption2
      t.text :caption3
      t.integer :prep_time
      t.integer :cook_time
      t.string :serving
      t.integer :post_layout_id

      t.timestamps
    end
  end
end
