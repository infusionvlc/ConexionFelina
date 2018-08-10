class TurnsController < ApplicationController  
  def index
  end

  def show
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
    redirect_to assignments_path(colony_id: @turn.assignment_id)
  end

  def edit
  end

  def destroy
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
