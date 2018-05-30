class CreateColoniesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :colonies_users do |t|
      t.integer :user_id
      t.integer :colony_id

      t.timestamps
    end
  end
end
