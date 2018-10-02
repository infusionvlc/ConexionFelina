require "rails_helper"

RSpec.describe TurnValidator do
  def mock_relationships(turn)
    turn.assignment = mock_model("Assignment")
  end

  context "given a turn with a start date earlier than its end date" do
    it "must be valid" do
      valid_turn = Turn.new(start_date: Date.yesterday, end_date: Date.today)
      mock_relationships(valid_turn)

      expect(valid_turn).to be_valid
    end
  end

  context "given a turn with a start date later than its end date" do
    it "must be invalid" do
      invalid_turn = Turn.new(start_date: Date.today, end_date: Date.yesterday)
      mock_relationships(invalid_turn)

      expect(invalid_turn).to_not be_valid
    end
  end
end
