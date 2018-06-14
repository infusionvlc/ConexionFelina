require 'rails_helper'

RSpec.describe PosessionValidator do
	def mock_relationships(posession)
		posession.user = mock_model("User")
		posession.product = mock_model("Product")
	end

  context 'given a posession with a date earlier than today' do
    it 'must be valid' do
      valid_posession = Posession.new(date: Date.yesterday)

      mock_relationships(valid_posession)
      expect(valid_posession).to be_valid
    end
  end

  context 'given a posession with a date later than today' do
    it 'must be invalid' do
      invalid_posession = Posession.new(date: Date.today)

      mock_relationships(invalid_posession)
      expect(invalid_posession).to_not be_valid
    end
  end

  context 'given a posession with a date being nil' do
    it 'must be invalid' do
      invalid_posession = Posession.new(date: Date.today)

      mock_relationships(invalid_posession)
      expect(invalid_posession).to_not be_valid
    end
  end
end