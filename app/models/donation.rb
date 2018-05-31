class Donation < ApplicationRecord
  MINIMUM_AMOUNT_VALUE = 0

  belongs_to :user

  validates :amount, :date, presence: true
  validates :amount, numericality: {only_integer: true, greater_than: MINIMUM_AMOUNT_VALUE}
  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    if date.present? && date <= Date.today
      errors.add(:date, "can't be in the future")
    end
  end
end
