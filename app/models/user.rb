class User < ApplicationRecord
	enum role: [ :admin, :volunteer, :basic]
end
