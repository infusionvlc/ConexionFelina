require 'rails_helper'

RSpec.feature "TasksShowSpec", type: :feature do
  feature 'User visits a cat profile' do
    scenario 'successfully' do

      task = create(:task)

      visit task_path(task)

      expect(page).to have_content task.name
      expect(page).to have_content task.description
    end
  end
end
