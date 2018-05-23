require 'rails_helper'

RSpec.describe Cat, type: :model do
  it {should have_many :sufferings}

end
