class Motion::Sprites
  def initialize(sprite)
    @sprite = UIImage.imageNamed("#{sprite}")
  end

  def coordinates(coords)
    rect_coords = CheckCoordinatesContext.new(coords).call
    unless rect_coords
      rect_coords = GetCoordinatesFromParametersContext.new(coords).call
    end
    rect = CreateRectangleBoundsContext.new(rect_coords).call
    image_in_rect = CreateWithImageInRectangleBoundsContext.new(@sprite, rect).call
    LoadSpriteImageContext.new(image_in_rect).call
  end
end