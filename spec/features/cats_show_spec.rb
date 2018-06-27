require 'rails_helper'

RSpec.feature "CatsShowSpec", type: :feature do
    feature 'User visits a cat profile' do
      scenario 'successfully' do

        user = mock_model('User')
        cat = mock_model('Cat')

        login_as user
        visit cat_path(cat)
  
        expect(page).to have_content cat.name
        expect(page).to have_content cat.bio
        expect(page).to have_content cat.birthdate_date
        expect(page).to have_content cat.gender
        expect(page).to have_content cat.sterilized
        expect(page).to have_content cat.abandoned_date
        expect(page).to have_content cat.document
      end
    end
  end
  