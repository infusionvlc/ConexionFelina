require 'rails_helper'

RSpec.describe User, type: :model do
	it { should have_and_belong_to_many :colonies}
  it { should have_and_belong_to_many :turns}
  it { should have_many :sponsors}
  it { should have_many :adoptions}
  it { should have_many :donations}
  it { should have_many :posessions}

	context 'validations' do
		it { should validate_presence_of(:username) }
		it { should validate_presence_of(:email) }
		it { should validate_presence_of(:role) }
		it { should validate_presence_of(:purrs) }
		it { should validate_numericality_of(:purrs).only_integer }
		it { should validate_numericality_of(:purrs).is_greater_than_or_equal_to 0 }
	end
end
