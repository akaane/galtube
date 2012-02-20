module VideosHelper
  def actors_available
    Actor.all.collect { |loc| [loc.name, loc.id]}
  end
end
