class CreateDinosaurs < ActiveRecord::Migration
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :other_name
      t.string :diet
      t.string :description

      t.timestamps
    end
  end
end
