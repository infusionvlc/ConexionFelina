require 'rails_helper'
include Warden::Test::Helpers

RSpec.feature "CatsIndexFeatures" , type: :feature do
  volunteer = User.create!(username: 'aadsdffdfdsds', email:'dfsfdsfdsa@b.es', bio:'adfsdfss', purrs: 0, role: 'volunteer', password: 'abcabcabcabc', password_confirmation: 'abcabcabcabc')

  before do
      login_as volunteer 
  end

  scenario 'User visit cats index page and show the list of cats with all not nullable info and buttons' do 
    visit cats_path
    expect(page).to have_content 'Edit'
    expect(page).to have_content 'Destroy'

    cats = Cat.all
    cats.each do |cat| 
      expect(page).to have_content cat.name
    end
  end
end