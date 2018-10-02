require 'rails_helper'

RSpec.describe TurnsUser, type: :model do
  it { should belong_to :turn }
  it { should belong_to :user }
end
