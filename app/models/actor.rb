class Actor < ActiveRecord::Base
  include Localizable
  
  belongs_to :location

  def display_birthday
    birthday.to_date
  end
  
end
