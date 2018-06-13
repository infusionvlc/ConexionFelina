require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should have_many :colonies }

  	context 'validations' do
  		it { should validate_presence_of(:name) }
  		it { should validate_presence_of(:description) }
  		it { should validate_length_of(:name).is_at_most(20) }
  		it { should validate_length_of(:description).is_at_most(512) }

  	end
end
