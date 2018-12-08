class Colony < ApplicationRecord
  MAXIMUM_NAME_COLONY_LENGTH = 20
  MAXIMUM_BIO_LENGTH = 512

  belongs_to :location
  has_many :cats

  has_one_attached :icon

  has_and_belongs_to_many :users

  has_many :assignments
  has_many :tasks, through: :assignments

  validates :name, presence: true
  validates :name, length: {maximum: MAXIMUM_NAME_COLONY_LENGTH}
  validates :bio, length: {maximum: MAXIMUM_BIO_LENGTH}
end
