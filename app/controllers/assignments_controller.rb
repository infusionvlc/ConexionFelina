class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new(colony_id: params[:colony_id])
  end

  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.save
    redirect_to(colony_path(@assignment.colony_id))
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to(colony_path(@assignment.colony_id))
  end

  private

  def assignment_params
    params.require(:assignment).permit(:colony_id, :task_id)
  end
end
