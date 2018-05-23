require 'rails_helper'

RSpec.describe Illness, type: :model do
  it {should have_many :sufferings}
end
