require 'rails_helper'

RSpec.describe Suffering, type: :model do
  it {should have_many :treatment_entries}
  it {should belong_to :cat}
  it {should belong_to :illness}

  context 'validations' do
    before(:all) do
      Rails.application.load_seed
    end
    context 'when a a suffering for a cat is created' do
      it 'should be valid' do
        cat = Cat.first.sufferings.create(diagnosis_date: Date.today, notes: '', chronic: false, status: 'initial', illness_id: 1, dischargement_date: Date.today)
        expect(cat).to be_valid
      end
    end
    context 'when a suffering for a cat is created with a nil dischargement_date' do
      it 'should not be valid with an empty dischargement date and other than healthy' do
        cat = Cat.first.sufferings.create(diagnosis_date: Date.today, notes: '', chronic: false, status: 'initial', illness_id: 1, dischargement_date: nil)
        expect(cat).to_not be_valid
      end
    end
  end
end
