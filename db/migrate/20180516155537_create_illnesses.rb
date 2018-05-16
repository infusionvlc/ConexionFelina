class CreateIllnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :illnesses do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.text :treatment

      t.timestamps
    end
  end
end
