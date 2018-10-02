class Turn < ApplicationRecord
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates_with TurnValidator

  belongs_to :assignment
  has_and_belongs_to_many :users
end
