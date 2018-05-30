class AddColonyIdToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :colony_id, :integer
  end
end
