class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :url
      t.references :category, index: true
      t.float :price
      t.references :brand, index: true
      t.string :photo_url

      t.timestamps
    end
  end
end
