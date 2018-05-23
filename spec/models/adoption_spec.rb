require 'rails_helper'

RSpec.describe Adoption, type: :model do
  it { should belong_to :cat }
  it { should belong_to :user }
end
