class TurnPolicy < ApplicationPolicy
  attr_reader :user, :turn

  def initialize(user, turn)
    @user = user
    @turn = turn
  end

  def show?
    volunteer_or_admin?
  end

  def index?
    volunteer_or_admin?
  end

  def new?
    volunteer_or_admin?
  end

  def create?
    volunteer_or_admin?
  end

  def edit?
    volunteer_or_admin?
  end

  def update?
    volunteer_or_admin?
  end

  def destroy?
    volunteer_or_admin?
  end

  def volunteer_or_admin?
    !@user.nil? && (@user.role == 'volunteer' || @user.role == 'admin')
  end
end
