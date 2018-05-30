require 'rails_helper'

RSpec.describe Posession, type: :model do
  it { should belong_to :user }
  it { should belong_to :product }
end
