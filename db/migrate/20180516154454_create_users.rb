class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :pass
      t.integer :role
      t.text :bio
      t.string :avatar
      t.integer :purrs

      t.timestamps
    end
  end
end
