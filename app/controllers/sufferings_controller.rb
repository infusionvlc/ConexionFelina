class SufferingsController < ApplicationController
  before_action :enforce_volunteer_colony

  def show
    suffering_id = params[:id]
    @suffering = Suffering.find(suffering_id)
    authorize @suffering
  end

  def index
    cat_id = params[:cat_id]
    @sufferings = Suffering.where(cat_id: cat_id)
  end

  def new
    @suffering = Suffering.new
    authorize @suffering
  end

  def create
    @suffering = Suffering.new(suffering_params)
    @suffering.cat_id = params[:cat_id]
    authorize @suffering
    @suffering.save
    redirect_to(cats_path)
  end

  def edit
    @suffering = Suffering.find(params[:id])
    authorize @suffering
  end

  def update
    @suffering = Suffering.find(params[:id])
    authorize @suffering
    @suffering.update(suffering_params)
    redirect_to suffering_path(@suffering)
  end

  def destroy
    @suffering = Suffering.find(params[:id])
    authorize @suffering
    @suffering.destroy
    redirect_to sufferings_path(:cat_id => @suffering.cat_id)
  end

  private

  def user_not_authorized
    flash[:warning] = t('flash.shared')
    redirect_to suffering_path
  end

  def suffering_params
    params.require(:suffering).permit(:diagnosis_date, :notes, :chronic, :status, :cat_id, :illness_id)
  end
end
