class AddFkToTreatmentEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :treatment_entries, :suffering_id, :integer
  end
end
