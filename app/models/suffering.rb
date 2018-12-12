class Suffering < ApplicationRecord
  enum statuses: [:initial, :mild, :advanced, :stable, :healthy]

  has_many :treatment_entries
  belongs_to :cat
  belongs_to :illness

  validates :status, inclusion: { in: statuses.values }
  validates_with SufferingValidator
end
