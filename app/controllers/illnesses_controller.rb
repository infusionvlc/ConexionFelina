class IllnessesController < ApplicationController
  def show
    illness_id = params[:id]
    @illness = Illness.find(illness_id)
    authorize @illness
  end

  private

  def task_params
    params.require(:illness).permit(:name, :description, :priority, :treatment)
  end
end
