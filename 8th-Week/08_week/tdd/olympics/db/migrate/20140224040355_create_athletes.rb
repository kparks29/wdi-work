class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.string :country
      t.string :sport
      t.boolean :has_medalled

      t.timestamps
    end
  end
end
