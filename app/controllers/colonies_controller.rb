class ColoniesController < ApplicationController
  before_action :enforce_volunteer_colony, except: [:join, :index, :new, :create]

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    @colonies = Colony.all
    authorize @colonies
  end

  def new
    @colony = Colony.new
    authorize @colony
  end

  def edit
    @colony = Colony.find(params[:id])
    authorize @colony
  end

  def create
    @colony = Colony.new(colonies_params)
    authorize @colony
    if @colony.save
      @colony.team_members.create(user_id: current_user.id, role: :mod)
      redirect_to @colony
    else
      redirect_to(colonies_path)
    end
  end

  def update
    @colony = Colony.find(params[:id])
    authorize @colony
    @colony.update(colonies_params)
    redirect_to(colonies_path)
  end

  def show
    @colony = Colony.find(params[:id])
    @cats = @colony.cats.where(saved_state: 'active')
    authorize @colony
    @applications = @colony.applications.where(status: 'pending')
  end

  def destroy
    @colony = Colony.find(params[:id])
    authorize @colony
    @colony.destroy
    redirect_to(colonies_path)
  end

  def join
    @colony = Colony.find(params[:id])
    authorize @colony
    @application = ColonyApplication.new(colony_id: @colony.id, user_id: current_user.id, status: 'pending')
  end

  private

  def colonies_params
    params.require(:colony).permit(:name, :bio, :location)
  end

  def user_not_authorized
    flash[:warning] = "You are not autorized to perform this action"
    redirect_to colonies_path
  end
end
