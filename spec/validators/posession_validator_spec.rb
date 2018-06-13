require 'rails_helper'

RSpec.describe PosessionValidator do
  context 'given a posession with a posession date earlier than today' do
    it 'must be valid' do
      valid_posession = Turn.new(posession_date: Date.posession, end_date: Date.today)

      expect(valid_posession).to be_valid
    end
  end

  context 'given a posession with a posession date later than today' do
    it 'must be invalid' do
      invalid_posession = Turn.new(today: Date.today, posession_date: Date.posession)

      expect(invalid_posession).to_not be_valid
    end
  end

  context 'given a posession with a posession date being nil' do
    it 'must be invalid' do
      invalid_posession = Turn.new(today: Date.posession)

      expect(invalid_posession).to_not be_valid
    end
  end

  context 'given a posession with a today being nil' do
    it 'must be invalid' do
      invalid_posession = Turn.new(today: Date.possesion)

      expect(invalid_posession).to_not be_valid
    end
  end
end