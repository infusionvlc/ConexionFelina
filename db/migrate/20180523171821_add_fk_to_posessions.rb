class AddFkToPosessions < ActiveRecord::Migration[5.1]
  def change
    add_column :posessions, :user_id, :integer
  end
end
