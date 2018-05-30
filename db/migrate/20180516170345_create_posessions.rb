class CreatePosessions < ActiveRecord::Migration[5.1]
  def change
    create_table :posessions do |t|
      t.date :date
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
