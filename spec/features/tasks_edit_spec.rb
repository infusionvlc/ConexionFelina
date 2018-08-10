require "rails_helper"

RSpec.feature "UserEditsTask", type: :feature do
  scenario "AdminEditsTasks" do
    admin = User.create!(username: "AdminEdit", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin
    task = Task.first
    
    expect { visit edit_task_path(task.id) }.to raise_error(Pundit::NotAuthorizedError)
  end

  scenario "VolunteerEditsTasks" do
    volunteer = User.create!(username: "VolunteerEdit", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer
    task = Task.first
    visit edit_task_path(task.id)

    expect(page).to have_content("Edit #{task.name}")
  end

  scenario "BasicEditsTasks" do
    user = User.create!(username: "BasicEdit", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user
    task = Task.first

    expect { visit edit_task_path(task.id) }.to raise_error(Pundit::NotAuthorizedError)
  end
end
