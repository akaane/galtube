class VideosController < ApplicationController
  before_filter :fill_actor_selector, :only => [:new, :edit]
  
  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @video = Video.find(params[:id])
    format.html { redirect_to '/', notice: 'Video was successfully created.' } unless @video.published #TODO diskplay an error page here
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/new
  # GET /videos/new.json
  def new
    @video = Video.new
    @video.duration = 60
    @video.width = 1280
    @video.height = 720
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/1/edit
  def edit
    @video = Video.find(params[:id])
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(params[:video])
    @video.published = true
    @video.hits = 0
    @video.current_review = 1

    respond_to do |format|
      if @video.save
        format.html { redirect_to videos_path, notice: 'Video was successfully created.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        format.html { render action: "new" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /videos/1
  # PUT /videos/1.json
  def update
    @video = Video.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to videos_path, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    respond_to do |format|
      format.html { redirect_to videos_url }
      format.json { head :no_content }
    end
  end
  
  def destroy_cover
    cover = Cover.find(params[:id])   
    @video = cover.video
    cover.destroy
    
    respond_to do |format|
      format.html { redirect_to edit_url(:id => @video.id) }
      format.json { head :no_content }
    end
  end

  def publish
    @video = Video.find(params[:id])
    @video.published = true

    respond_to do |format|
      if @video.save
        format.html { redirect_to videos_path, notice: 'Video was successfully published.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        format.html { redirect_to videos_path, notice: 'Video was not published, please try again later.' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end  

  def unpublish
    @video = Video.find(params[:id])
    @video.published = false

    respond_to do |format|
      if @video.save
        format.html { redirect_to videos_path, notice: 'Video was successfully unpublished.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        format.html { redirect_to videos_path, notice: 'Video was not unpublished, please try again later.' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end
  private

  def fill_actor_selector
    @actors = Actor.all
  end
  
end
