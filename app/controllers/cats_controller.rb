class CatsController < ApplicationController
  def show
    cat_id = params[:id]
    @cat = Cat.find(cat_id)
  end

  def index
    @cats = Cat.all.where(saved_state: 'active')
  end

  def new
    @cat = Cat.new
    authorize @cat
    @cat.save
    redirect_to cat_build_path(:add_basic_info, cat_id: @cat.id)
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

  def adopt
    @cat = Cat.find(params[:id])
    authorize @cat
    Adoption.create(cat_id: @cat.id, user_id: current_user.id)
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :bio, :birthdate_date, :gender,
                                :sterilized, :abandoned_date, :document, :colony_id, :saved_state,
                                sufferings_attributes: [:id, :illness_id, :cat_id, :diagnosis_date, :notes, :chronic, :status, :_destroy])
  end

  def user_not_autorized
    flash[:alert] = "You are not autorized to perform this action"
    redirect_to cats_path
  end
end
