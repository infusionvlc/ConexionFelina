require 'rails_helper'

RSpec.describe SufferingValidator do
  context 'given a suffering with a diagnosis date earlier than today' do
    it 'must be valid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.yesterday, cat_id: 1, illness_id: 1)
      valid_suffering.cat = Cat.new(name: 'Nucita')
      valid_suffering.illness = Illness.new(name: 'Leucemia')
      expect(valid_suffering).to be_valid
    end
  end

  context 'given a suffering with a diagnosis date equal to today' do
    it 'must be valid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, cat_id: 1, illness_id: 1)
      valid_suffering.cat = Cat.new(name: 'Nucita')
      valid_suffering.illness = Illness.new(name: 'Leucemia')
      expect(valid_suffering).to be_valid
    end
  end

  context 'given a suffering with a diagnosis date later than today' do
    it 'must be invalid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.tomorrow, cat_id: 1, illness_id: 1)
      valid_suffering.cat = Cat.new(name: 'Nucita')
      valid_suffering.illness = Illness.new(name: 'Leucemia')
      expect(valid_suffering).to_not be_valid
    end
  end

end