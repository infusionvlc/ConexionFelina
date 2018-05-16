class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.decimal :longitude
      t.decimal :latitude
      t.string :address

      t.timestamps
    end
  end
end
