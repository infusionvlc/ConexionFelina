require "rails_helper"

RSpec.describe Donation, type: :model do

  it { should belong_to :user }

  context "validations" do
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount).is_greater_than 0 }
    it { should validate_presence_of(:date) }
  end
end
