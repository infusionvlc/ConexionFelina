class SufferingsController < ApplicationController
  def show
    suffering_id = params[:id]
    @suffering = Suffering.find(suffering_id)
    authorize @suffering
  end

  def new
    @suffering = Suffering.new
    authorize @suffering
  end

  def create
    @suffering = Suffering.new(suffering_params)
    @suffering.cat_id = params[:cat_id]
    @suffering.illness_id = params[:illness_id]
    authorize @suffering
    @suffering.save
    redirect_to(cats_path)
  end

  private

  def user_not_autorized
    flash[:alert] = "You are not autorized to perform this action"
    redirect_to suffering_path
  end

  def suffering_params
    params.require(:suffering).permit(:diagnosis_date, :notes, :chronic, :status, :cat_id, :illness_id)
  end
end
