class ColoniesController < ApplicationController
  def index
    @colonies = Colony.all
  end

  def new
    @colony = Colony.new
  end

  def edit
    @colony = Colony.find(params[:id])
  end

  def create
    @colony = Colony.new(colonies_params)
    @colony.save
    redirect_to(colonies_path)
  end

  def update
    @colony = Colony.find(params[:id])
    @colony.update(colonies_params)
    redirect_to(colonies_path)
  end

  def show
    @colony = Colony.find(params[:id])
  end

  def destroy
    @colony = Colony.find(params[:id])
    @colony.destroy
    redirect_to(colonies_path)
  end

  private
  def colonies_params
    params.require(:colony).permit(:name, :bio, :location_id)
  end
end
