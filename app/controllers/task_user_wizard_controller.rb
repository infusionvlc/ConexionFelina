class TaskUserWizardController < ApplicationController

  def assign_task_to_user
    @colonies = Colony.all
    @tasks = Task.all
    @users = User.all
##CAMBIAR POLICIES
  end

  def assign_task_to_user_register
    assignment = Assignment.new
    assignment.colony_id = params[:colony_id]
    assignment.task_id = params[:task_id]
    assignment.save 

    user = User.find(params[:user_id] )
    puts user.username

    turn = Turn.new(turn_params)
    turn.assignment_id = assignment.id
    turn.save

    turns_users = TurnsUser.new
    turns_users.user_id = user.id
    turns_users.turn_id = turn.id
    turns_users.save   

    redirect_to(cats_path)
  end

  private

  def turn_params
    params.require(:turn).permit(:start_date, :end_date)
  end
end
