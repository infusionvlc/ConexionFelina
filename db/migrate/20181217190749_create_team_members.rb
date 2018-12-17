class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.references :user, foreign_key: true
      t.references :colony, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
