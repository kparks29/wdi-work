class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :is_liked
      t.references :user, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
