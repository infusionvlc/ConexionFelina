class SufferingPolicy < ApplicationPolicy
  attr_reader :user, :suffering

  def initialize(user, suffering)
    @user = user
    @suffering = suffering
  end

  def show?
    volunteer_or_admin?
  end

  def new?
    volunteer_or_admin?
  end

  def create?
    volunteer_or_admin?
  end

  def volunteer_or_admin?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
