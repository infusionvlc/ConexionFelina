class AddFkToSponsors < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsors, :user_id, :integer
  end
end
