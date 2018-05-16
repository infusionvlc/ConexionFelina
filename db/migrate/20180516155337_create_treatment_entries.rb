class CreateTreatmentEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :treatment_entries do |t|
      t.date :date
      t.integer :treatment
      t.text :notes

      t.timestamps
    end
  end
end
