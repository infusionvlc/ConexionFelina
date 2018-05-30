class User < ApplicationRecord
	enum role: [ :admin, :volunteer, :basic]

	has_and_belongs_to_many :colonies
	has_and_belongs_to_many :turns
	has_many :posessions
	has_many :donations
	has_many :adoptions
	has_many :cats, through: :adoptions
	has_many :sponsors
	has_many :cats, through: :sponsors

	validates :username, :email, :role, :purrs, presence: true
 	validates :username, length: { maximum: 20 }
	validates :bio, length: { maximum: 512 }
        validates :purrs, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 	
end
