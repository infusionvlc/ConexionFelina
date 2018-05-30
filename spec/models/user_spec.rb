require 'rails_helper'

RSpec.describe User, type: :model do
	it { should have_and_belong_to_many :colonies}
  it { should have_and_belong_to_many :turns}
  it { should have_many :sponsors}
  it { should have_many :adoptions}
  it { should have_many :donations}
  it { should have_many :posessions}
end
