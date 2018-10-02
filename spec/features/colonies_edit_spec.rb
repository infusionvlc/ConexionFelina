require "rails_helper"

RSpec.feature "UserEditsColony", type: :feature do
  scenario "AdminEditsColonies" do
    admin = User.create!(username: "AdminEdit", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin
    colony = Colony.first
    visit edit_colony_path(colony.id)

    expect(page).to have_content("Edit #{colony.name}")
  end

  scenario "VolunteerEditsColonies" do
    volunteer = User.create!(username: "VolunteerEdit", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer
    colony = Colony.first
    visit edit_colony_path(colony.id)

    expect(page).to have_content("Edit #{colony.name}")
  end

  scenario "BasicEditsColonies" do
    user = User.create!(username: "BasicEdit", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user
    colony = Colony.first

    expect { visit edit_colony_path(colony.id) }.to raise_error(Pundit::NotAuthorizedError)
  end
end
