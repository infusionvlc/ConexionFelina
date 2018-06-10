class Donation < ApplicationRecord
  MINIMUM_AMOUNT_VALUE = 0

  belongs_to :user

  validates :amount, :date, presence: true
  validates :amount, numericality: {only_integer: true, greater_than: MINIMUM_AMOUNT_VALUE}

  validates_with DonationValidator
end
