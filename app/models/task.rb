class Task < ApplicationRecord
  has_many :assignments
  has_many :colonies, through: :assignments
end
