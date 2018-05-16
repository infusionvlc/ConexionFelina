class CreateSufferings < ActiveRecord::Migration[5.1]
  def change
    create_table :sufferings do |t|
      t.date :diagnosis_date
      t.text :notes
      t.boolean :chronic
      t.integer :status

      t.timestamps
    end
  end
end
