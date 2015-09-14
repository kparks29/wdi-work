class CreateCapybaras < ActiveRecord::Migration
  def change
    create_table :capybaras do |t|
      t.string :name
      t.string :age
      t.string :image_url

      t.timestamps
    end
  end
end
