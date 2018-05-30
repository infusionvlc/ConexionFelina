class AddFkToSufferings < ActiveRecord::Migration[5.1]
  def change
    add_column :sufferings, :cat_id, :integer
    add_column :sufferings, :illness_id, :integer
  end
end
