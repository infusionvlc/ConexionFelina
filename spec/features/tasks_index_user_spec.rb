require 'rails_helper'

RSpec.feature "TasksIndexFeatures" , type: :feature do
  scenario 'User visit tasks index page and show the list of tasks with all not nullable info' do 
    visit tasks_path

    tasks = Task.all
    tasks.each do |task| 
      expect(page).to have_content task.name
    end
  end
end
