class Cats::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_basic_info, :add_origin, :add_abandoned_date, :has_been_to_vet, :add_vet_info,
        :add_bio, :finish

  def show
    @cat = Cat.find(params[:cat_id])
    render_wizard
  end


  def update
    @cat = Cat.find(params[:cat_id])

    if step == :add_basic_info
      if params[:cat][:gender]
        params[:cat][:gender] = :male
      else
        params[:cat][:gender] = :female
      end
    end

    if params[:cat][:sterilized]
      params[:cat][:sterilized] = params[:cat][:sterilized].to_i
    end

    params[:cat][:saved_state] = step.to_s
    params[:cat][:saved_state] = 'active' if step == steps.last
    @cat.update_attributes(build_params)
    @cat.avatar.attach(params[:cat][:avatar]) if step == :add_basic_info

    if step == :add_origin
      if params[:cat][:colony] == '0'
        redirect_to wizard_path(:add_abandoned_date)
      elsif params[:cat][:colony] == '1'
        redirect_to wizard_path(:add_colony)
      end
    elsif step == :has_been_to_vet
      if params[:cat][:vet] == '0'
        redirect_to wizard_path(:add_vet_info)
      elsif params[:cat][:vet] == '1'
        redirect_to wizard_path(:add_bio)
      end
    else
      if params[:commit] == 'repeat'
        redirect_to new_cat_path
      elsif params[:commit] == 'profile'
        redirect_to @cat
      else
        render_wizard @cat
      end
    end


  end


  def create
    @cat = Cat.create
    redirect_to wizard_path(steps.first, :cat_id => @cat.id)
  end

  private
  def build_params
    params.require(:cat).permit(:name, :gender, :birthday_date, :abandoned_date, :avatar, :bio, :saved_state, :colony_id, :document, :sterilized,
                                sufferings_attributes: [:id, :illness_id, :cat_id, :diagnosis_date, :notes, :chronic, :status, :_destroy])
  end
end