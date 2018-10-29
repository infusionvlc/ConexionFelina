require 'rails_helper'

RSpec.feature "ColoniesShowSpec", type: :feature do
  feature 'User visits a colony profile' do
    scenario 'successfully' do

      colony = create(:colony)

      visit colony_path(colony)

      expect(page).to have_content colony.name
      expect(page).to have_content colony.bio
    end
  end
end
