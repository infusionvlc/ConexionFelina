class CreateColonyApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :colony_applications do |t|
      t.references :colony, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status
      t.text :message

      t.timestamps
    end
  end
end
