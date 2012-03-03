class Category < ActiveRecord::Base
  include Localizable
  has_and_belongs_to_many :videos

  def avliable_videos
    videos.where(:published => true)
  end  
end
