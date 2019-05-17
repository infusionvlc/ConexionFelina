require 'rails_helper'

RSpec.describe Sponsorship, type: :model do

  it { should belong_to :cat }
  it { should belong_to :user }

  context 'validations' do
    it {should validate_presence_of :start_date}
    it {should validate_presence_of :amount}
    it {should validate_numericality_of(:amount).is_greater_than(0)}
    it {should validate_presence_of :last_payment_date}
    it {should validate_inclusion_of(:renovate).in_array([true, false])}
  end
end
