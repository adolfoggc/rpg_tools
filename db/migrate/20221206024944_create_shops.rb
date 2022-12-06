class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.references :town, null: false, foreign_key: true
      t.integer :kind

      t.timestamps
    end
  end
end
