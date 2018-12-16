require "rails_helper"

RSpec.describe SufferingValidator do
  def mock_relationships(suffering)
    suffering.cat = mock_model("Cat")
    suffering.illness = mock_model("Illness")
  end

  context 'when a suffering for a healty cat is created' do
    it 'should be valid with a status other than healthy and a dischargement date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: 0, dischargement_date: Date.today)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to be_valid
    end

    it 'should not be valid with a healthy status and an empty dischargement date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: 4, dischargement_date: nil)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to_not be_valid
    end

    it 'should be valid with a healthy status and an dischargement date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: 4, dischargement_date: Date.today)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to be_valid
    end

    it 'should be valid with a status other than healthy and an empty dischargement date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: 0, dischargement_date: nil)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to be_valid
    end

    it 'should not be valid with a nil status and a nil dischargement_date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: nil, dischargement_date: nil)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to_not be_valid
    end

    it 'should not be valid with a nil status and a dischargement_date' do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: nil, dischargement_date: Date.today)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to_not be_valid
    end
  end

  context "given a suffering with a diagnosis date earlier than today" do
    it "must be valid" do
      valid_suffering = Suffering.new(diagnosis_date: Date.yesterday, notes: '', chronic: false, status: 4, dischargement_date: Date.today)
      mock_relationships(valid_suffering)
      expect(valid_suffering).to be_valid
    end
  end

  context "given a suffering with a diagnosis date equal to today" do
    it "must be valid" do
      valid_suffering = Suffering.new(diagnosis_date: Date.today, notes: '', chronic: false, status: 4, dischargement_date: Date.today)
      mock_relationships(valid_suffering)

      expect(valid_suffering).to be_valid
    end
  end

  context "given a suffering with a diagnosis date later than today" do
    it "must be invalid" do
      invalid_suffering = Suffering.new(diagnosis_date: Date.tomorrow)
      mock_relationships(invalid_suffering)

      expect(invalid_suffering).to_not be_valid
    end
  end
end
