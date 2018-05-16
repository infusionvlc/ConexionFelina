class CreatePosessions < ActiveRecord::Migration[5.1]
  def change
    create_table :posessions do |t|
      t.date :date

      t.timestamps
    end
  end
end
