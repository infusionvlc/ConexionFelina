require 'rails_helper'

RSpec.describe Posession, type: :model do
  it { should belong_to :user }
  it { should belong_to :product }

  context 'validations' do
  	 it { should validate_presence_of(:date) }
  end
end
