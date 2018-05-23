class TreatmentEntry < ApplicationRecord
	enum treatment: [ :surgery, :diet, :medicine, :hospitalized, :hosted ]

	belongs_to :suffering
end
