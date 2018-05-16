class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.date :start_date
      t.date :last_payment_date
      t.integer :amount
      t.boolean :renovate

      t.timestamps
    end
  end
end
