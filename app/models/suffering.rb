class Suffering < ApplicationRecord
  enum valid_status: [:initial, :mild, :advanced, :stable, :healthy]

  has_many :treatment_entries
  belongs_to :cat
  belongs_to :illness

  validates :status, inclusion: { in: valid_status.values }
  validates_with SufferingValidator
end
