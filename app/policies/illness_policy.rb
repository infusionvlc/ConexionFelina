class IllnessPolicy < ApplicationPolicy
  attr_reader :user, :illness

  def initialize(user, illness)
    @user = user
    @illness = illness
  end

  def show?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
