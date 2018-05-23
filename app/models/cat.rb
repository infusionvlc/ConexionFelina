class Cat < ApplicationRecord
  enum gender: [:male, :female]
  enum sterilized: [:yes, :no]

  has_many :sufferings
  has_many :illnesses, through: :sufferings
end
