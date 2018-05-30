class AddFkToSponsors < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsors, :user_id, :integer
    add_column :sponsors, :cat_id, :integer
  end
end
