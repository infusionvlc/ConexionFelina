require "rails_helper"

RSpec.describe Colony, type: :model do
  MAXIMUM_NAME_COLONY_LENGTH = 20

  it { should belong_to :location }
  it { should have_and_belong_to_many :users }
  it { should have_many :cats }
  it { should have_many :assignments }

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(MAXIMUM_NAME_COLONY_LENGTH) }
  end
end
