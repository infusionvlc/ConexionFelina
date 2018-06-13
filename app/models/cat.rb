class Cat < ApplicationRecord
  enum gender: [:male, :female]
  enum sterilized: [:yes, :no]

  has_many :sufferings
  has_many :illnesses, through: :sufferings
  belongs_to :colony
  has_one :adoption
  has_many :sponsors
  has_many :users, through: :sponsors
end
