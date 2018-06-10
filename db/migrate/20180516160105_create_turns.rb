class CreateTurns < ActiveRecord::Migration[5.1]
  def change
    create_table :turns do |t|
      t.date :start_date
      t.date :end_date
      t.integer :assignment_id
      t.timestamps
    end
  end
end
