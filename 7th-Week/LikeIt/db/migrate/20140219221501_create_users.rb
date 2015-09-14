class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :salt
      t.string :hashed_password
      t.boolean :is_single

      t.timestamps
    end
  end
end
