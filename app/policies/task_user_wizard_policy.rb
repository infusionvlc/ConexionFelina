class TaskUserWizardPolicy < ApplicationPolicy
  attr_reader :user, :task_user_wizard

  def initialize(user, task_user_wizard)
    @user = user
    @task_user_wizard = task_user_wizard
  end

  def assign_task_to_user_register?
    volunteer_or_admin?
  end

  def volunteer_or_admin?
    !@user.nil? && (@user.role == 'volunteer' || @user.role == 'admin')
  end
end
