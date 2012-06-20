class CreateWithImageInRectangleBoundsContext
  def self.call(sprite, rectangle)
    CreateWithImageInRectangleBoundsContext.new(sprite, rectangle).call
  end

  def initialize(sprite, rectangle)
    @sprite = sprite
    @rectangle = rectangle
    @klass = Object.new
    @klass.extend ImageRoles
  end

  def call
    @klass.create_image_sprite_with_rectangle_bounds @sprite, @rectangle
  end
end