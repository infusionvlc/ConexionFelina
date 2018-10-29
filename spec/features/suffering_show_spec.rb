require "rails_helper"

RSpec.feature "SufferingShowSpec", type: :feature do
  scenario "AdminShowSuffering" do
    admin = User.create!(username: "SufferingShowAdmin", email: "SufferingShowAdmin@b.es", purrs: 0, role: "admin", password: "UserAdmin", password_confirmation: "UserAdmin")
    login_as admin

    suffering = Suffering.first
    visit suffering_path(suffering)

    expect(page).to have_content suffering.diagnosis_date
    expect(page).to have_content suffering.notes
    expect(page).to have_content suffering.chronic
    expect(page).to have_content suffering.status
  end

  scenario "VolunteerShowSuffering" do
    volunteer = User.create!(username: "SufferingShowVolunt", email: "SufferingShowVolunteer@b.es", purrs: 0, role: "volunteer", password: "UserVolunteer", password_confirmation: "UserVolunteer")
    login_as volunteer

    suffering = Suffering.first
    visit suffering_path(suffering)

    expect(page).to have_content suffering.diagnosis_date
    expect(page).to have_content suffering.notes
    expect(page).to have_content suffering.chronic
    expect(page).to have_content suffering.status
  end
end
