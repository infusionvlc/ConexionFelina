require 'rails_helper'

RSpec.describe Suffering, type: :model do

  it {should have_many :treatment_entries}
  it {should belong_to :cat}
  it {should belong_to :illness}

  context 'validations' do
    before(:all) do
      Rails.application.load_seed
    end

    context 'when a suffering for a healty cat is created' do
      it 'should be valid with a status other than healthy and a dischargement date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: 0, illness_id: 1, dischargement_date: Date.today)
        expect(cat).to be_valid
      end

      it 'should not be valid with a healthy status and an empty dischargement date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: 4, illness_id: 1, dischargement_date: nil)
        expect(cat).to_not be_valid
      end

      it 'should be valid with a healthy status and an dischargement date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: 4, illness_id: 1, dischargement_date: Date.today)
        expect(cat).to be_valid
      end
      
      it 'should be valid with a status other than healthy and an empty dischargement date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: 0, illness_id: 1, dischargement_date: nil)
        expect(cat).to be_valid
      end

      it 'should not be valid with a nil status a a nil dischargement_date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: nil, illness_id: 1, dischargement_date: nil)
        expect(cat).to_not be_valid
      end

      it 'should not be valid with a nil status and a dischargement_date' do
        cat = Cat.first.sufferings.build(diagnosis_date: Date.today, notes: '', chronic: false, status: nil, illness_id: 1, dischargement_date: Date.today)
        expect(cat).to_not be_valid
      end
    end
  end
end
