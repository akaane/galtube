class Video < ActiveRecord::Base
  include Localizable
  include ExternalLinkable
  
  belongs_to :actor
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags, :join_table => "videos_tags", :foreign_key => "video_id"
  has_many :reviews
  has_many :covers
  
  attr_accessor :uploaded_cover_guids
  
  def self.all_availables
    self.where(:published => true)
  end
  
  def main_cover
    return Cover.new
    covers.first #TODO why first???
  end
  
  def attach_covers
    uploaded_cover_guids.split(',').each do |guid|
      new_cover = Cover.new :binary_guid => guid,
                            :width => 480, :height => 320 #TODO calc width & height here
      covers << new_cover
    end    
  end
  
  def resolution
    "#{width}*#{height}"
  end
  
end
