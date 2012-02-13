class Category < ActiveRecord::Base
  include Localizable

  has_and_belongs_to_many :videos
end
