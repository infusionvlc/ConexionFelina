require 'rails_helper'

RSpec.describe Assignment, type: :model do
  it { should belong_to :task }
  it { should belong_to :colony }
  it { should have_many :turns }
end
