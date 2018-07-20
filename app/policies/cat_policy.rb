class CatPolicy < ApplicationPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def index?
    true
  end

  def new?
    volunteer_or_admin?
  end

  def create?
    volunteer_or_admin?
  end

  def update?
    volunteer_or_admin?
  end

  def edit?
    volunteer_or_admin?
  end

  def destroy?
    volunteer_or_admin?
  end

  def volunteer_or_admin?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
