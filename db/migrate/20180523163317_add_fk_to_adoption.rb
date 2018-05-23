class AddFkToAdoption < ActiveRecord::Migration[5.1]
  def change
    add_column :adoptions, :user_id, :integer
    add_column :adoptions, :cat_id, :integer
  end
end
