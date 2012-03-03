class Actor < ActiveRecord::Base
  include Localizable
  belongs_to :location
  has_many :videos

  def age
    (Date.today - birthday).to_i / 365
  end
  
end
