class Location < ApplicationRecord
	MAX_NAME_LENGTH = 20
	MAX_DESCRIPTION_LENGTH = 512

  has_many :colonies

  validates :name, presence: true
  validates :description, presence: true

  validates :name, length: { maximum: MAX_NAME_LENGTH }
  validates :description, length: { maximum: MAX_DESCRIPTION_LENGTH }
end
