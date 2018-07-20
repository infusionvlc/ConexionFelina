require "rails_helper"

RSpec.feature "UserCreatesCat", type: :feature do
  scenario "AdminCreatesCats" do
    admin = User.create!(username: "AdminCreate", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin
    visit new_cat_path
    expect(page).to have_content("New cat")
    attrs = Cat.first.attributes.delete(:id)
    cat = Cat.create(attrs)
    expect(page).to have_content(cat.name)
  end

  scenario "VolunteerCreatesCats" do
    volunteer = User.create!(username: "VolunteerCreate", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer

    visit new_cat_path
    expect(page).to have_content("New cat")
    attrs = Cat.first.attributes.delete(:id)
    cat = Cat.new(attrs)
    expect(page).to have_content(cat.name)
  end

  scenario "BasicCreatesCats" do
    user = User.create!(username: "BasicCreate", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user

    expect { visit new_cat_path }.to raise_error(Pundit::NotAuthorizedError)
  end
end
