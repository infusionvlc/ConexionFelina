class ColonyApplication < ApplicationRecord
  enum valid_status: [:pending, :approved, :dismissed]

  belongs_to :colony
  belongs_to :user

  validates :status, inclusion: { in: valid_statuses.values }
end
