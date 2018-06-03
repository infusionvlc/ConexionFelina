class CreateAdoptions < ActiveRecord::Migration[5.1]
  def change
    create_table :adoptions do |t|
      t.date :date
      t.integer :user_id
      t.integer :cat_id
      t.timestamps
    end
  end
end
