require "rails_helper"
include Warden::Test::Helpers

RSpec.feature "ColoniesIndexFeatures", type: :feature do
  scenario "User visit colonies index page and show the list of colonies with all not nullable info and buttons" do
    volunteer = User.create!(username: "ColoniesIndex", email: "ColoniesIndex@b.es", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer

    visit colonies_path
    expect(page).to have_content "Edit"
    expect(page).to have_content "Destroy"

    colonies = Colony.all
    colonies.each do |colony|
      expect(page).to have_content colony.name
    end
  end
end
