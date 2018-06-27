class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def destroy
  end

  def edit
  end
  
end
