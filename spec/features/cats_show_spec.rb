require 'rails_helper'

RSpec.feature "CatsShowSpec", type: :feature do
    feature 'User visits a cat profile' do
      scenario 'successfully' do

        cat = create(:cat)

        visit cat_path(cat)

        expect(page).to have_content cat.name
        expect(page).to have_content cat.bio
        expect(page).to have_content cat.birthday_date
        expect(page).to have_content cat.gender
        expect(page).to have_content cat.sterilized
        expect(page).to have_content cat.abandoned_date
        expect(page).to have_content cat.document
      end
    end
    
    feature 'Volunteer visits a cat profile' do
      scenario 'successfully' do
        cat = create(:cat)

        visit cat_path(cat)

        expect(page).to have_content cat.name
        expect(page).to have_content cat.bio
        expect(page).to have_content cat.birthday_date
        expect(page).to have_content cat.gender
        expect(page).to have_content cat.sterilized
        expect(page).to have_content cat.abandoned_date
        expect(page).to have_content cat.document
        expect(page).to have_link  'Edit'
        expect(page).to have_link  'Delete'
      end
    end
  end
