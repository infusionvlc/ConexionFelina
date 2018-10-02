class Adoption < ApplicationRecord
  belongs_to :cat
  belongs_to :user

  validates :date, presence: true, on: :update

end
