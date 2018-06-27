class CatsController < ApplicationController
  def show
    cat_id = params[:id]
    @cat = Cat.find(cat_id)
  end
  def index
    @cats = Cat.all
  end
end
