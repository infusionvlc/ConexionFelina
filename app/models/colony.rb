class Colony < ApplicationRecord
  belongs_to :location
  has_many :cats

  has_and_belongs_to_many :users

  has_many :assignments
  has_many :tasks, through: :assignments
end
