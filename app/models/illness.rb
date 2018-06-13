class Illness < ApplicationRecord
	MAXIMUM_DESCRIPTION_LENGTH = 512
	
	enum priority: [ :low, :medium, :high ] 

	has_many :sufferings
	has_many :cats, through: :sufferings
	
	validates :name, :description, :priority, :treatment, presence: true
  validates :name, length: {maximum: 20}
  validates :description, length: {maximum: MAXIMUM_DESCRIPTION_LENGTH}

end
