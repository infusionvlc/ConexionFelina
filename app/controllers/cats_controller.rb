class CatsController < ApplicationController
  layout :resolve_layout

  before_action :enforce_volunteer_colony

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def show
    cat_id = params[:id]
    @cat = Cat.find(cat_id)
  end

  def index
    @cats = []
    if !Cat.first.nil? 
      authorize Cat.first 
    end
    Cat.where(saved_state: 'active').each do |cat|
      if cat.colony.team_members.exists?(user_id: current_user.id)
        @cats << cat
      end
    end
  end

  def league
    @cats = Cat.all.where(saved_state: 'active')
  end

  def new
    @cat = Cat.new(colony_id: params[:colony_id], name: '')
    authorize @cat
    @cat.save
    redirect_to cat_build_path(:add_basic_info, cat_id: @cat.id)
  end

  def create
    @cat = Cat.create(cat_params)
    authorize @cat
    @cat.save
    @cat.avatar.attach(params[:cat][:avatar])
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

  def new_sponsor
    @cat = Cat.find(params[:id])
    authorize @cat
  end

  def sponsor
    cat = Cat.find(params[:id])
    renovate = params[:renovate] || false

    authorize cat

    Sponsor.create(amount: params[:amount], renovate: renovate,
       last_payment_date: Date.today, start_date: Date.today, user: current_user, cat: cat)

    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :bio, :birthday_date, :gender, :avatar,
                                :sterilized, :abandoned_date, :document, :colony_id, :saved_state,
                                sufferings_attributes: [:id, :illness_id, :cat_id, :diagnosis_date, :notes, :chronic, :status, :_destroy])
  end

  def user_not_authorized
    flash[:warning] = t('flash.shared')
    redirect_to colonies_path
  end

  def resolve_layout
    case action_name
    when "league"
      "league"
    else
      "application"
    end
  end
end
