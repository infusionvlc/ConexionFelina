class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :bio
      t.text :avatar
      t.date :birthday_date
      t.integer :gender
      t.integer :sterilized
      t.date :abandoned_date
      t.string :document

      t.timestamps
    end
  end
end
