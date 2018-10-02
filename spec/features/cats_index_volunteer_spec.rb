require "rails_helper"
include Warden::Test::Helpers

RSpec.feature "CatsIndexFeatures", type: :feature do
  scenario "User visit cats index page and show the list of cats with all not nullable info and buttons" do
    volunteer = User.create!(username: "CatsIndex", email: "CatsIndex@b.es", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer

    visit cats_path
    expect(page).to have_content "Edit"
    expect(page).to have_content "Destroy"

    cats = Cat.all
    cats.each do |cat|
      expect(page).to have_content cat.name
    end
  end
end
