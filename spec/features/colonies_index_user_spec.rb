require 'rails_helper'

RSpec.feature "ColoniesIndexFeatures" , type: :feature do
  scenario 'User visit colonies index page and show the list of colonies with all not nullable info' do 
    visit colonies_path

    colonies = Colony.all
    colonies.each do |colony| 
      expect(page).to have_content colony.name
    end
  end
end
