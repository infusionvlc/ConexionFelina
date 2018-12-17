class AddDischargementDateToSufferingsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :sufferings, :dischargement_date, :datetime
  end
end
