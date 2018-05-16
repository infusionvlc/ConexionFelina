class TreatmentEntry < ApplicationRecord
	enum treatment: [ :surgery, :diet, :medicine, :hospitalized, :hosted ]
end
