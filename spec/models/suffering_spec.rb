require 'rails_helper'

RSpec.describe Suffering, type: :model do
  it {should have_many :treatment_entries}
	it {should belong_to :cat}
	it {should belong_to :illness}
end
