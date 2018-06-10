class Task < ApplicationRecord
  MAXIMUM_NAME_LENGTH = 20
  MAXIMUM_BIO_LENGTH = 512

  has_many :assignments
  has_many :colonies, through: :assignments

  validates :name, presence: true
  validates :name, length: {maximum: MAXIMUM_NAME_LENGTH}
  validates :description, length: {maximum: MAXIMUM_BIO_LENGTH}

  validates_with TaskValidator
end
