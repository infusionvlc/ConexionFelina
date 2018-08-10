class TreatmentEntriesController < ApplicationController
  def index
    suffering_id = params[:suffering_id]
    @treatment_entries = TreatmentEntry.where(suffering_id: suffering_id)
  end

  def show
  end

  def new
    @treatment_entry = TreatmentEntry.new
    authorize @treatment_entry
  end

  def create
    @treatment_entry = TreatmentEntry.new(treatment_entry_params)
    @treatment_entry.suffering_id = params[:suffering_id]
    authorize @treatment_entry
    @treatment_entry.save
    redirect_to(suffering_path(params[:suffering_id]))
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_not_autorized
    flash[:alert] = "You are not autorized to perform this action"
    redirect_to treatment_entry_path
  end

  def treatment_entry_params
    params.require(:treatment_entry).permit(:date, :treatment, :notes, :suffering_id)
  end
end
