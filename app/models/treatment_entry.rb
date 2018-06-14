class TreatmentEntry < ApplicationRecord
	MAXIMUM_CHARACTERS = 1024

	enum treatment: [ :surgery, :diet, :medicine, :hospitalized, :hosted ]

	belongs_to :suffering

	validates :date, presence: true
    validates :treatment,  presence: true
    validates :notes, length: { maximum: MAXIMUM_CHARACTERS }
    validates_with TreatmentEntryValidator
end
