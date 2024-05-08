class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :author_name
      t.integer :category_id
      t.string :published_at

      t.timestamps
    end
  end
end
