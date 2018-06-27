class CatsController < ApplicationController
  def index
    @cats = Cat.all
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

  private

  def category_params
    params.require(:cat).permit(:bio, :birthdate_date, :gender, :sterilized, :abandoned_date, :document, :colony_id)
  end

  def user_not_autorized
  	flash[:alert] = "You are not autorized to perform this action"
  	redirect_to cats_path
  end


end
