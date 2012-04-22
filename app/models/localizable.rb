module Localizable
  #TODO we should do more at here    
  def name
    name_en if self.methods.any? { |m| m.to_s.starts_with?('name_') }
  end
  
  def title
    title_en if self.methods.any? { |m| m.to_s.starts_with?('title_') }
  end
  
end