class TreatmentEntriesController < ApplicationController
  def index
    suffering_id = params[:suffering_id]
    @treatment_entries = TreatmentEntry.where(suffering_id: suffering_id)
  end

  def show
    treatment_entry_id = params[:id]
    @treatment_entry = TreatmentEntry.find(treatment_entry_id)
    authorize @treatment_entry
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
    redirect_to suffering_path(@treatment_entry.suffering_id)
  end

  def edit
    @treatment_entry = TreatmentEntry.find(params[:id])
    authorize @treatment_entry
  end

  def update
    @treatment_entry = TreatmentEntry.find(params[:id])
    authorize @treatment_entry
    @treatment_entry.update(treatment_entry_params)
    redirect_to treatment_entries_path(suffering_id: @treatment_entry.suffering_id)
  end

  def destroy
    @treatment_entry = TreatmentEntry.find(params[:id])
    authorize @treatment_entry
    @treatment_entry.destroy
    redirect_to treatment_entries_path(suffering_id: @treatment_entry.suffering_id)
  end

  private

  def user_not_autorized
    flash[:alert] = 'You are not autorized to perform this action'
    redirect_to treatment_entry_path
  end

  def treatment_entry_params
    params.require(:treatment_entry).permit(:date, :treatment, :notes, :suffering_id)
  end
end
