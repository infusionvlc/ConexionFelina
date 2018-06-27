require 'rails_helper'

RSpec.feature "CatsIndexFeatures" , type: :feature do
  scenario 'User visit cats index page and show the list of cats with all not nullable info' do 
    visit cats_path

    cats = Cat.all
    cats.each do |cat| 
      expect(page).to have_content cat.name
    end
  end
end