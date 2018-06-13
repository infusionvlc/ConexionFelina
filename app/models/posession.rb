class Posession < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :possesion_date, presence: true
  validates :today, presence: true
  validates_with PossesionValidator  
end
