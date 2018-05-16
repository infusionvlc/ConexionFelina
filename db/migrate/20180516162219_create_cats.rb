class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :bio
      t.text :avatar
      t.date :birthdate_date
      t.string :gender
      t.string :sterilized
      t.date :abandoned_date
      t.string :document

      t.timestamps
    end
  end
end
