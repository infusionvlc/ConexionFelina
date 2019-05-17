class RenameSponsorsToSponsorships < ActiveRecord::Migration[5.2]
  def change
    rename_table :sponsors, :sponsorships
  end
end
