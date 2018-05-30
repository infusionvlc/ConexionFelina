class Suffering < ApplicationRecord
	enum status: [ :initial, :mild, :advanced, :stable, :healthy ]

	has_many :treatment_entries
	belongs_to :cat
	belongs_to :illness
end
