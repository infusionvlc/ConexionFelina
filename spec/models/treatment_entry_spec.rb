require 'rails_helper'

RSpec.describe TreatmentEntry, type: :model do
  it {should belong_to :suffering}
end
