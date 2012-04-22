class Binary < ActiveRecord::Base
  before_save :update_mime, :update_size
  before_create :initialize_guid
  
  private
  def initialize_guid
    self.guid = "#{Time.now.to_i.to_s[3..9]}#{rand 99}".to_i
  end
  
  def update_size
    self.size = data.length
  end
  
  def update_mime
    self.mime = get_mime(name)
  end
  
  def get_mime(filename)
    extension = filename.split('.').last
    case extension
    when 'jpg', 'jpeg'
      'image/jpeg'
    when 'gif'
      'image/gif'      
    when 'png'
      'image/png'
    when 'torrent'
      'application/x-bittorrent'
    else
      #TODO should write log
      'unknown'
    end
  end
  
end
