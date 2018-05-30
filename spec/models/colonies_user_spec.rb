require 'rails_helper'

RSpec.describe ColoniesUser, type: :model do
  it { should belong_to :user }
  it { should belong_to :colony }
end
