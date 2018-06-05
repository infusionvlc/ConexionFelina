require 'rails_helper'

RSpec.describe TurnValidator do
  context 'given a suffering with a diagnosis date earlier than today' do
    it 'must be valid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.yesterday)

      expect(valid_suffering).to be_valid
    end
  end

  context 'given a suffering with a diagnosis date equal to today' do
    it 'must be valid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today)

      expect(valid_suffering).to be_valid
    end
  end

  context 'given a suffering with a diagnosis date later than today' do
    it 'must be valid' do
      valid_suffering = Suffering.new(diagnosis_date: Date.tomorrow)

      expect(valid_suffering).to_not be_valid
    end
  end

end