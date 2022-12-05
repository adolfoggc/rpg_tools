class CreateTownDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :town_details do |t|
      t.references :town, null: false, foreign_key: true
      t.integer :size
      t.integer :population

      t.timestamps
    end
  end
end
