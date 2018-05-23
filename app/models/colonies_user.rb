class ColoniesUser < ApplicationRecord
	belongs_to :colony
	belong_to :user
end
