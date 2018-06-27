require 'rails_helper'

RSpec.describe Illness, type: :model do
  MAXIMUM_DESCRIPTION_LENGTH = 512
  
  it {should have_many :sufferings}

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(20) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_most(MAXIMUM_DESCRIPTION_LENGTH) }
  end
end
