class IllnessesController < ApplicationController
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :enforce_volunteer_colony


  def index
    @illnesses = Illness.all
  end

  def new
    @illness = Illness.new
    authorize @illness
  end

  def create
    @illness = Illness.new(illness_params)
    authorize @illness
    @illness.save
    redirect_to( illnesses_path )
  end

  def edit
    @illness = Illness.find( params[ :id ])
    authorize @illness
  end

  def update
    @illness = Illness.find( params[ :id ])
    authorize @illness
    @illness.update( illness_params )
    redirect_to (illness_path( params[ :id ] ))
  end

  def show
    @illness = Illness.find( params[ :id ])
  end

  def destroy
    @illness = Illness.find( params[ :id ])
    authorize @illness
    @illness.destroy
    redirect_to( illnesses_path )
  end

  private

    def illness_params
      params.require(:illness).permit(:name, :description, :priority, :treatment)
    end

    def user_not_authorized
      flash[:alert] = "You are not autorized to perform this action"
      redirect_to illnesses_path
    end
end
