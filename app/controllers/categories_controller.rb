class CategoriesController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @videos = @category.videos.where(:published => true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end
  
end
