require 'rails_helper'

RSpec.describe Sponsor, type: :model do
  it { should belong_to :cat }
  it { should belong_to :user }
end
