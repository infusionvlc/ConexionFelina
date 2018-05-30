require 'rails_helper'

RSpec.describe Donation, type: :model do
  it { should belong_to :user }
end
