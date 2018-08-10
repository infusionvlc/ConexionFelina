class TurnsController < ApplicationController  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private

  def user_not_autorized
    flash[:alert] = 'You are not autorized to perform this action'
    redirect_to turn_path
  end

  def turn_params
    params.require(:turn).permit(:start_date, :end_date, :assignment_id)
  end

end
