class Suffering < ApplicationRecord
	enum status: [ :initial, :mild, :advanced, :stable, :healthy ]
end
