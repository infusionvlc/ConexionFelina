class Turn < ApplicationRecord
  belongs_to :assignment
  has_and_belongs_to_many :users
end
