class ColonyPolicy < ApplicationPolicy
  attr_reader :user, :colony

  def initialize(user, colony)
    @user = user
    @colony = colony
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
    volunteer_or_admin? && member_of_team?
  end

  def edit?
    volunteer_or_admin? && member_of_team?
  end

  def destroy?
    volunteer_or_admin? && member_of_team?
  end

  def join?
    volunteer_or_admin? && !member_of_team? && !already_applied?
  end

  def manage?
    volunteer_or_admin? && member_of_team?
  end

  def already_applied?
    @colony.applicants.include?(@user)
  end

  def member_of_team?
    @colony.team_members.exists?(user_id: @user.id)
  end

  def volunteer_or_admin?
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
