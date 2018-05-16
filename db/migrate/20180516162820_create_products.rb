class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
