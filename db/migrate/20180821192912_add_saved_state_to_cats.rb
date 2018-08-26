class AddSavedStateToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :saved_state, :string
  end
end
