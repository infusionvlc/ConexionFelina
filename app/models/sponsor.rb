class Sponsor < ApplicationRecord
  belongs_to :cat
  belongs_to :user
end
