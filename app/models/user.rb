class User < ApplicationRecord
	enum role: [ :admin, :volunteer, :basic]

	has_and_belongs_to_many :colonies
end
