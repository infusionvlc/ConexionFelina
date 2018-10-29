class Cats::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_basic_info, :add_origin, :add_abandoned_date,
        :add_colony, :has_been_to_vet, :add_vet_info, :add_illnesses,
        :add_bio, :finish

  def show
    @cat = Cat.find(params[:cat_id])
    render_wizard
  end


  def update
    @cat = Cat.find(params[:cat_id])
    params[:cat][:saved_state] = step.to_s
    params[:cat][:saved_state] = 'active' if step == steps.last
    @cat.update_attributes(build_params)

    if params[:commit] == 'repeat'
      redirect_to new_cat_path
    elsif params[:commit] == 'profile'
      redirect_to @cat
    else
      render_wizard @cat
    end
  end


  def create
    @cat = Cat.create
    redirect_to wizard_path(steps.first, :cat_id => @cat.id)
  end

  private
  def build_params
    params.require(:cat).permit(:name, :gender, :birthday_date, :abandoned_date, :bio, :saved_state, :colony_id, :document, :sterilized,
                                sufferings_attributes: [:id, :illness_id, :cat_id, :diagnosis_date, :notes, :chronic, :status, :_destroy])
  end
end