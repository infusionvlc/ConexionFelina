class AddLocationIdToColony < ActiveRecord::Migration[5.1]
  def change
    add_column :colonies, :location_id, :integer
  end
end
