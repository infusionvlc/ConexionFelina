require 'rails_helper'

RSpec.describe TreatmentEntry, type: :model do
  MAXIMUM_CHARACTERS =1024

  it {should belong_to :suffering}
  context 'validations' do
     it {should validate_presence_of :date}
     it {should validate_presence_of :treatment}
     it {should validate_length_of(:notes).is_at_most(MAXIMUM_CHARACTERS)}
end
end