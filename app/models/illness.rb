class Illness < ApplicationRecord
	enum priority: [ :low, :medium, :high ] 

	belongs_to :sufferings
  has_many :cats, through: :sufferings
end
