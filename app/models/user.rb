class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable

	MAXIMUM_USERNAME_LENGTH = 20
	MAXIMUM_BIO_LENGTH = 512
	MINIMUM_PURR_VALUE = 0

	enum role: [ :admin, :volunteer, :basic]

	has_many :team_members
	has_many :colonies, through: :team_members

	has_and_belongs_to_many :turns
	has_many :posessions
	has_many :donations
	has_many :adoptions
	has_many :cats, through: :adoptions
	has_many :sponsors
	has_many :cats, through: :sponsors

	has_many :applications, class_name: 'ColonyApplication'
  has_many :pending_colonies, through: :colony_applications, source: :colony

	validates :username, :email, :role, :purrs, presence: true
 	validates :username, length: { maximum: MAXIMUM_USERNAME_LENGTH }
	validates :bio, length: { maximum: MAXIMUM_BIO_LENGTH }
  validates :purrs, numericality: { only_integer: true, greater_than_or_equal_to: MINIMUM_PURR_VALUE }
	validates :email, uniqueness: true
	validates :username, uniqueness: true
end
