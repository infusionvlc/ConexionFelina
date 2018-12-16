class AdoptionsController < ApplicationController
  def index
    @adoptions = Adoption.all
  end
end