class UploadController < ApplicationController
  def show
    bin = Binary.find_by_guid params[:id]
    if bin
      send_data bin.data, { :type => bin.mime, :disposition => 'inline', :filename => bin.name }
    else
      render :nothing => true, :status => 404
    end
  end
  
  def cover
    bin = get_binary_from_request
    respond_to do |format|
      if bin.save
        format.json { render json: { :success => true, :guid => bin.guid } }
      else
        format.json { render json: { :success => false, :message => "File upload failed, please try again later." } }
      end
    end
  end

  def torrent
    bin = get_binary_from_request
    respond_to do |format|
      if bin.save
        format.json { render json: { :success => true, :guid => bin.guid } }
      else
        format.json { render json: { :success => false, :message => "File upload failed, please try again later." } }
      end
    end
  end
  
  private
  def get_binary_from_request
    Binary.new :name => params[:qqfile], :data => request.body_stream.read
  end
end
