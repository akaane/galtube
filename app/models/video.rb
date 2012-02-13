class Video < ActiveRecord::Base
  include Localizable
  include ExternalLinkable
  
  belongs_to :actor
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags
  has_many :reviews
  
  def self.all_availables
    self.where(:published => true)
  end
  
  def cover
    covers.first #TODO here we should change into some nother business stratage.
  end
  
end
