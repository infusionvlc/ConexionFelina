class IllnessPolicy < ApplicationPolicy
  attr_reader :user, :illness

  def initialize(user, illness)
    @user = user
    @illness = illness
  end

  def new?
    !@user.nil? && (@user.role == 'volunteer' || @user.role == 'admin')
  end

  def create?
    new?
  end
  
  def edit?
    new?
  end

  def update?
    new?
  end

  def destroy?
    new?
  end

  def show?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
