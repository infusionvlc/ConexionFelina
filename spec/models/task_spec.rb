require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should have_many :assignments }
end
