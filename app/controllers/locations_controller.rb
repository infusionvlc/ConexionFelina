class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find( params[ :id ])
  end

  def create
    @location = Location.new( location_params )
    @location.save
    redirect_to( locations_path )
  end

  def update
    @location = Location.find( params[ :id ])
    @location.update(location_params)
    redirect_to( locations_path )
  end

  def show
    @location = Location.find( params[ :id ])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to(locations_path)
  end

  private

    def location_params
      params.require(:location).permit(:name, :description, :address, :longitude, :latitude)
    end
end
