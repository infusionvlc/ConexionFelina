class RenameBirthayFieldInCats < ActiveRecord::Migration[5.1]
  def change
    rename_column :cats, :birthdate_date, :birthday_date
  end
end
