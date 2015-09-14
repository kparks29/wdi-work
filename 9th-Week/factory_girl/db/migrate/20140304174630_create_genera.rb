class CreateGenera < ActiveRecord::Migration
  def change
    create_table :genera do |t|
      t.references :family, index: true
      t.string :name

      t.timestamps
    end
  end
end
