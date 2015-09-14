class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.references :genus, index: true
      t.string :name
      t.string :locomotion
      t.integer :number_of_legs

      t.timestamps
    end
  end
end
