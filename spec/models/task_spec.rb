require "rails_helper"

RSpec.describe Task, type: :model do
  MAXIMUM_NAME_LENGTH = 50
  MAXIMUM_BIO_LENGTH = 1024

  it { should have_many :assignments }

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(MAXIMUM_NAME_LENGTH) }
  end
end
