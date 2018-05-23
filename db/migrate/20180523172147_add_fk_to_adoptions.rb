class AddFkToAdoptions < ActiveRecord::Migration[5.1]
  def change
    add_column :adoptions, :user_id, :integer
  end
end
