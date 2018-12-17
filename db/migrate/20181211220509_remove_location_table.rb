class RemoveLocationTable < ActiveRecord::Migration[5.2]
  def change
    add_column :colonies, :location, :string
    drop_table :locations
  end


end
