require "rails_helper"

RSpec.describe SponsorValidator do
  def mock_relationships(sponsor)
    sponsor.cat = mock_model("Cat")
    sponsor.user = mock_model("User")
  end

  context "given a sponsor with its last payment date earlier than today" do
    it "must be valid" do
      valid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.yesterday)
      mock_relationships(valid_sponsor)

      expect(valid_sponsor).to be_valid
    end
  end

  context "given a sponsor with its last payment date equal to today" do
    it "must be valid" do
      valid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.today)
      mock_relationships(valid_sponsor)

      expect(valid_sponsor).to be_valid
    end
  end

  context "given a sponsor with its last payment date later than today" do
    it "must be invalid" do
      invalid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.tomorrow)
      mock_relationships(invalid_sponsor)

      expect(invalid_sponsor).to_not be_valid
    end
  end
end
