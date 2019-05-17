class Sponsorship < ApplicationRecord
  MINIMUM_AMOUNT_VALUE = 0

  belongs_to :cat
  belongs_to :user

  validates :start_date, presence: true
  validates :last_payment_date, presence: true
  validates :amount, presence: true
  validates_inclusion_of :renovate, in: [true, false]

  validates :amount, numericality: { greater_than: MINIMUM_AMOUNT_VALUE }
  validates_with SponsorshipValidator
end
