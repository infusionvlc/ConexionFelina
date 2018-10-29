require "rails_helper"

RSpec.feature "UserSponsorsCat", type: :feature do
  scenario "AdminSponsorsCat" do
    admin = User.create!(username: "AdminCreate", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    cat = create(:cat)

    login_as admin
    visit cat_path(cat)
    expect(page).to have_content("Sponsor")

    click_link("Sponsor")
    expect(page).to have_content("Amount")
    expect(page).to have_content("Renovate")
    find('input[name="commit"]').click

    expect(page).to have_current_path cats_path
  end

  scenario "VolunteerSponsorsCat" do
    volunteer = User.create!(username: "VolunteerCreate", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    cat = create(:cat)

    login_as volunteer
    visit cat_path(cat)
    expect(page).to have_content("Sponsor")

    click_link("Sponsor")
    expect(page).to have_content("Amount")
    expect(page).to have_content("Renovate")
    find('input[name="commit"]').click

    expect(page).to have_current_path cats_path
  end

  scenario "BasicSponsorsCats" do
    user = User.create!(username: "BasicCreate", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    cat = create(:cat)

    login_as user

    expect { visit new_sponsor_cat_path(id: cat.id) }.to raise_error(Pundit::NotAuthorizedError)
  end
end
