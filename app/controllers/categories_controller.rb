class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category }
    end
  end
  
end
