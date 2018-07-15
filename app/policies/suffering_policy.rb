class SufferingPolicy < ApplicationPolicy
  attr_reader :user, :suffering

  def initialize(user, suffering)
    @user = user
    @suffering = suffering
  end

  def show?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end

  def new?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end

  def create?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
