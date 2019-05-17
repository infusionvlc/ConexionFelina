class CreateSponsorships < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsorships do |t|
      t.date :start_date
      t.date :last_payment_date
      t.integer :amount
      t.boolean :renovate
      t.integer :user_id
      t.integer :cat_id

      t.timestamps
    end
  end
end
