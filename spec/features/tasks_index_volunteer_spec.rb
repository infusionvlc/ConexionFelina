require 'rails_helper'

RSpec.feature "TasksIndexFeatures" , type: :feature do
  scenario 'User visit tasks index page and show the list of tasks with all not nullable info' do 
    volunteer = User.create!(username: "TasksIndex", email: "TasksIndex@b.es", purrs: 0, role: "volunteer", password: "abcabcabcabc", password_confirmation: "abcabcabcabc")
    login_as volunteer

    visit tasks_path
    expect(page).to have_content "Edit"
    expect(page).to have_content "Destroy"
    
    tasks = Task.all
    tasks.each do |task| 
      expect(page).to have_content task.name
    end
  end
end
