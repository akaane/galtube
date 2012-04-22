module ExternalLinkable
  def uri
    return "" unless self.respond_to?(:binary_guid)
    "http://localhost:3000/upload/#{binary_guid}" #TODO modify this before release
  end
  
end