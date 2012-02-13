module ActorsHelper
  def locations_available
    Location.all.collect { |loc| [loc.name, loc.id]}
  end
  
end
