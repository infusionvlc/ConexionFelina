class CatsController < ApplicationController
  def show
    cat_id = params[:id]
    @cat = Cat.find(cat_id)
  end
end
