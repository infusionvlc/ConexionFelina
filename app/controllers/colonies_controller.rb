class ColoniesController < ApplicationController
  before_action :enforce_volunteer_colony, except: [:join, :index, :new, :create]

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
    if @colony.save
      @colony.team_members.create(user_id: current_user.id, role: :mod)
      redirect_to @colony
    else
      redirect_to(colonies_path)
    end
  end

  def update
    @colony = Colony.find(params[:id])
    @colony.update(colonies_params)
    redirect_to(colonies_path)
  end

  def show
    @colony = Colony.find(params[:id])
    @applications = @colony.applications.where(status: :pending)
  end

  def destroy
    @colony = Colony.find(params[:id])
    @colony.destroy
    redirect_to(colonies_path)
  end

  def join
    @colony = Colony.find(params[:id])
    @application = @colony.applications.new(user_id: current_user.id, status: :pending)
    @colony.team_members.where(role: :mod).each do |mod|
      ColonyApplicationMailer.notify_mods(@application, mod).deliver
    end
  end

  private

  def colonies_params
    params.require(:colony).permit(:name, :bio, :location_id)
  end
end
