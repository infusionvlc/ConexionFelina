require 'rails_helper'

RSpec. describe Colony, type: :model do
  it { should belong_to :location }
  it { should have_and_belong_to_many :users }
  it { should have_many :cats }
  it { should have_many :assignments }
end
