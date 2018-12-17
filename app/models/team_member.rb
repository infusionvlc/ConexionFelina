class TeamMember < ApplicationRecord
  belongs_to :user
  belongs_to :colony

  enum role: [:mod, :basic]
end
