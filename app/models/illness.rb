class Illness < ApplicationRecord
	enum priority: [ :low, :medium, :high ] 

	has_many :sufferings
  has_many :cats, through: :sufferings
end
