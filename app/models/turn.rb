class Turn < ApplicationRecord
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates_with TurnValidator
end
