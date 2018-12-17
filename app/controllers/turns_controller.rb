class TurnsController < ApplicationController
  before_action :enforce_volunteer_colony

  def index
    @assignment_id = params[:assignment_id]
    @colony_id = params[:colony_id]
    @turns = Turn.where(assignment_id: @assignment_id)
  end

  def new
    @turn = Turn.new
    authorize @turn
  end

  def create
    @turn = Turn.new(turn_params)
    @turn.assignment_id = params[:assignment_id]
    authorize @turn
    @turn.save
    redirect_to assignments_path(colony_id: params[:colony_id])
  end

  def edit
    @turn = Turn.find(params[:id])
    authorize @turn
  end

  def update
    @turn = Turn.find(params[:id])
    authorize @turn
    @turn.update(turn_params)
    redirect_to assignments_path(colony_id: params[:colony_id])
  end

  def destroy
    @turn = Turn.find(params[:id])
    @turn.destroy
    redirect_to(assignments_path(colony_id: params[:colony_id]))
  end

  private

  def user_not_autorized
    flash[:alert] = 'You are not autorized to perform this action'
    redirect_to turns_path
  end

  def turn_params
    params.require(:turn).permit(:start_date, :end_date, :assignment_id)
  end
end
