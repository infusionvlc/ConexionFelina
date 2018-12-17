class RemoveLocationTable < ActiveRecord::Migration[5.2]
  def change
    add_column :colonies, :location, :string
    remove_column :colonies, :location_id, :integer
    drop_table :locations
  end


end
