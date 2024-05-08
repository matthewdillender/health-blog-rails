class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :affiliate_link

      t.timestamps
    end
  end
end
