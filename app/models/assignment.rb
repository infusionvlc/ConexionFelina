class Assignment < ApplicationRecord
  belongs_to :colony
  belongs_to :task

  has_many :turns
end
