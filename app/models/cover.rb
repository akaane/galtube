class Cover < ActiveRecord::Base
  include ExternalLinkable
  belongs_to :video
end
