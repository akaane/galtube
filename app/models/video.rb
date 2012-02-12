class Video < ActiveRecord::Base
  belongs_to :actor
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags
  has_many :reviews
end
