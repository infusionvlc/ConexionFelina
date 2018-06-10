require "rails_helper"

RSpec.describe Donation, type: :model do
  MINIMUM_AMOUNT_VALUE = 0

  it { should belong_to :user }

  context "validations" do
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount).is_greater_than MINIMUM_AMOUNT_VALUE }
    it { should validate_presence_of(:date) }
  end
end
