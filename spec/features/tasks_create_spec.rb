require "rails_helper"

RSpec.feature "UserCreatesTask", type: :feature do
  scenario "AdminCreatesTask" do
    admin = User.create!(username: "AdminCreate", email: "test@test.test", purrs: 0, role: "admin", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as admin

    expect { visit new_task_path }.to raise_error(Pundit::NotAuthorizedError)
  end

  scenario "VolunteerCreatesTask" do
    volunteer = User.create!(username: "VolunteerCreate", email: "test@test.test", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer
    visit new_task_path
    expect(page).to have_content("New task")
    attrs = Task.first.attributes.delete(:id)
    task = Task.new(attrs)
    expect(page).to have_content(task.name)
  end

  scenario "BasicCreatesTask" do
    user = User.create!(username: "BasicCreate", email: "test@test.test", purrs: 0, role: "basic", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as user

    expect { visit new_colony_path }.to raise_error(Pundit::NotAuthorizedError)
  end
end
