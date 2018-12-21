class ColonyApplicationsController < ApplicationController

  def index
  end

  def new
  end

  def edit
  end

  def create
    @application = ColonyApplication.new(colonies_params)
    @application.user_id = current_user.id
    @application.status = 'pending'

    if @application.save
      flash[:success] = "Hooray! We will send you an email when this team accepts your application."
    else
      flash[:error] = "Oops! We had a problem processing your request."
    end
    redirect_to colonies_path
  end

  def update
  end

  def show
  end

  def destroy
  end

  def approve
    @application = ColonyApplication.find(params[:id])
    @application.update(status: 'approved')
    @application.colony.team_members.create(user_id: @application.user.id, role: :basic)
    ColonyApplicationMailer.notify_approval(@application, @application.user).deliver
    redirect_to @application.colony
  end

  private

  def colonies_params
    params.require(:colony_application).permit(:message, :status, :user_id, :colony_id)
  end
end
