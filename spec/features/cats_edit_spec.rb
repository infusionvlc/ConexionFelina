require "rails_helper"

RSpec.feature "UserEditsCat", type: :feature do
  scenario "AdminEditsCats" do
    admin = User.create!(username: "AdminEdit", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin
    cat = Cat.first
    visit edit_cat_path(cat.id)

    expect(page).to have_content("Edit #{cat.name}")
  end

  scenario "VolunteerEditsCats" do
    volunteer = User.create!(username: "VolunteerEdit", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer
    cat = Cat.first
    visit edit_cat_path(cat.id)

    expect(page).to have_content("Edit #{cat.name}")
  end

  scenario "BasicEditsCats" do
    user = User.create!(username: "BasicEdit", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user
    cat = Cat.first

    expect { visit edit_cat_path(cat.id) }.to raise_error(Pundit::NotAuthorizedError)
  end
end
