class CreateColonies < ActiveRecord::Migration[5.1]
  def change
    create_table :colonies do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
