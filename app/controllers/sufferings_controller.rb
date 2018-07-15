class SufferingsController < ApplicationController
  def show
    suffering_id = params[:id]
    @suffering = Suffering.find(suffering_id)
    authorize @suffering
  end

  private

  def user_not_autorized
    flash[:alert] = "You are not autorized to perform this action"
    redirect_to suffering_path
  end
end
