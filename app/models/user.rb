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
end
