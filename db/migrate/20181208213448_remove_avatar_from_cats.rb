class RemoveAvatarFromCats < ActiveRecord::Migration[5.2]
  def change
    remove_column :cats, :avatar
  end
end
