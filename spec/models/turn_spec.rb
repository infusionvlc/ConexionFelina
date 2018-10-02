require 'rails_helper'

RSpec.describe Turn, type: :model do
  context 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
  
  it { should belong_to :assignment }
  it { should have_and_belong_to_many :users }
end
