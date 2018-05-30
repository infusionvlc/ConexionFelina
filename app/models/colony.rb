class Colony < ApplicationRecord
  belongs_to :location
  has_many :cats

  has_and_belongs_to_many :users
end
