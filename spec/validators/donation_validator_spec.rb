require "rails_helper"

RSpec.describe DonationValidator do
  context "given a donation with an empty field" do
    it "must be invalid" do
      invalid_donation = Donation.new(amount: nil, date: nil)
      invalid_donation.user = User.new()

      expect(invalid_donation).to_not be_valid
    end
  end

  context "given a donation with its date earlier than today" do
    it "must be valid" do
      valid_donation = Donation.new(amount: 1, date: Date.yesterday)
      valid_donation.user = User.new()

      expect(valid_donation).to be_valid
    end
  end

  context "given a donation with its date equal to today" do
    it "must be valid" do
      valid_donation = Donation.new(amount: 1, date: Date.today)
      valid_donation.user = User.new()

      expect(valid_donation).to be_valid
    end
  end

  context "given a donation with it date later than today" do
    it "must be invalid" do
      invalid_donation = Donation.new(amount: 1, date: Date.tomorrow)
      invalid_donation.user = User.new()

      expect(invalid_donation).to_not be_valid
    end
  end

  context "given a donation with a negative amount" do
    it "must be invalid" do
      invalid_donation = Donation.new(amount: -1, date: Date.today)
      invalid_donation.user = User.new()

      expect(invalid_donation).to_not be_valid
    end
  end

  context "given a donation with a zero amount" do
    it "must be invalid" do
      invalid_donation = Donation.new(amount: 0, date: Date.today)
      invalid_donation.user = User.new()

      expect(invalid_donation).to_not be_valid
    end
  end

  context "given a donation with a positive amount" do
    it "must be valid" do
      valid_donation = Donation.new(amount: 1, date: Date.today)
      valid_donation.user = User.new()

      expect(valid_donation).to be_valid
    end
  end
end
