class TreatmentEntryPolicy < ApplicationPolicy
  attr_reader :user, :treatment_entry

  def initialize(user, treatment_entry)
    @user = user
    @treatment_entry = treatment_entry
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
    !@user.nil? && (@user.role == "volunteer" || @user.role == "admin")
  end
end
