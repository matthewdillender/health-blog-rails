class CreateAdvertisements < ActiveRecord::Migration[7.1]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.string :link_url
      t.string :start_date
      t.string :end_date
      t.decimal :price

      t.timestamps
    end
  end
end
