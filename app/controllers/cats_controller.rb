class CatsController < ApplicationController
  def show
    cat_id = params[:id]
    @cat = Cat.find(cat_id)
  end

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
    authorize @cat
  end

  def create
    @cat = Cat.create(cat_params)
    authorize @cat
    @cat.save
    redirect_to cat_path(@cat)
  end

  def edit
    @cat = Cat.find(params[:id])
    authorize @cat
  end

  def update
    @cat = Cat.find(params[:id])
    authorize @cat
    @cat.update(cat_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat = Cat.find(params[:id])
    authorize @cat
    @cat.destroy
    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:bio, :birthdate_date, :gender, :sterilized, :abandoned_date, :document, :colony_id)
  end

  def user_not_autorized
    flash[:alert] = "You are not autorized to perform this action"
    redirect_to cats_path
  end
end
