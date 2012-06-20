module ImageRoles
  def create_image_sprite_with_rectangle_bounds(sprite, rectangle)
    CGImageCreateWithImageInRect(sprite.CGImage, rectangle)
  end

  def create_image_from_sprite(image_in_rect)
    UIImage.imageWithCGImage(image_in_rect)
  end
end