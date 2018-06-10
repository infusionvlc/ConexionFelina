require 'rails_helper'

RSpec.describe Cat, type: :model do
  it {should have_many :sufferings}
  it { should belong_to :colony }
  it { should have_one :adoption }
  it { should have_many :sponsors }
end
