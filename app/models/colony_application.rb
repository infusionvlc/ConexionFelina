class ColonyApplication < ApplicationRecord
  enum status: [:pending, :approved, :dismissed]

  belongs_to :colony
  belongs_to :user
end
