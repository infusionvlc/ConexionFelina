class Illness < ApplicationRecord
	enum priority: [ :low, :medium, :high ] 
end
