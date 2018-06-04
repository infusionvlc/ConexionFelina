class Cat < ApplicationRecord
  MAXIMUM_NAME_LENGTH = 20
  MAXIMUM_BIO_LENGTH  = 512
  MINIMUM_BIRTH_DATE  = Date.today

  enum gender: [:male, :female]
  enum sterilized: [:yes, :no]

  has_many :sufferings
  has_many :illnesses, through: :sufferings
  belongs_to :colony
  has_one :adoption
  has_many :sponsors
  has_many :users, through: :sponsors

  validates :name, presence: true
  validates :name, length: { maximum: MAXIMUM_NAME_LENGTH }
  validates :bio,  length: { maximum: MAXIMUM_BIO_LENGTH }
  validates : birthdate_date_must_be_in_the_past

  def birthdate_date_must_be_in_the_past
    if birthdate_date > Date.today
      errors.add(:expiration_date, "Birthdate must be in the past")
    end
  end

end
