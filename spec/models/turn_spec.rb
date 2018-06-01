require 'rails_helper'

RSpec.describe Turn, type: :model do
  context 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
end
