class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :begins_at
      t.datetime :ends_at
      t.boolean :end_time_approximate
      t.text :notes

      t.timestamps
    end
  end
end
