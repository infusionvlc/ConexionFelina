class ColoniesUser < ApplicationRecord
	belongs_to :colony
	belongs_to :user
end
