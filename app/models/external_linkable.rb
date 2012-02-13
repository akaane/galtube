module ExternalLinkable
  def uri
    return "" unless self.respond_to?(:binary_guid)
    "http://xxx.com/binaries/#{binary_guid}" #TODO not implated
  end
  
end