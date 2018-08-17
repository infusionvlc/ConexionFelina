require "rails_helper"

RSpec.feature "UserCreatesColony", type: :feature do
  scenario "AdminCreatesColony" do
    admin = User.create!(username: "AdminCreate", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin
    visit new_colony_path
    expect(page).to have_content("New colony")
    attrs = Colony.first.attributes.delete(:id)
    colony = Colony.create(attrs)
    expect(page).to have_content(colony.name)
  end

  scenario "VolunteerCreatesColony" do
    volunteer = User.create!(username: "VolunteerCreate", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer
    visit new_colony_path
    expect(page).to have_content("New colony")
    attrs = Colony.first.attributes.delete(:id)
    colony = Colony.new(attrs)
    expect(page).to have_content(colony.name)
  end

  scenario "BasicCreatesColony" do
    user = User.create!(username: "BasicCreate", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user

    expect { visit new_colony_path }.to raise_error(Pundit::NotAuthorizedError)
  end
end
