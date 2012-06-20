class LoadSpriteImageContext
  def self.call(image_in_rect)
    LoadSpriteImageContext.new(image_in_rect).call
  end

  def initialize(image_in_rect)
    @image_in_rect = image_in_rect
    @klass = Object.new
    @klass.extend ImageRoles
  end

  def call
    @klass.create_image_from_sprite @image_in_rect
  end
end