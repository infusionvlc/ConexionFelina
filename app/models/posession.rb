class Posession < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :date, presence: true
  validates_with PosessionValidator  
end
