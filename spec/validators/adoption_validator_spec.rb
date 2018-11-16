require "rails_helper"

RSpec.describe Adoption, :type => :model do
  def mock_relationships(adoption)
    adoption.user = mock_model("User")
    adoption.cat = mock_model("Cat")
  end

  context "given a adoption with date" do
    it "must be valid" do
      valid_adoption = Adoption.new(date: Date.yesterday)
      mock_relationships(valid_adoption)

      expect(valid_adoption).to be_valid
    end
  end

  context "given a adoption without date when updated" do
    it "must be invalid" do
      valid_adoption = Adoption.new()
      valid_adoption.update({})
      mock_relationships(valid_adoption)

      expect(valid_adoption.errors.messages.empty?).to eq(false)
    end
  end
end