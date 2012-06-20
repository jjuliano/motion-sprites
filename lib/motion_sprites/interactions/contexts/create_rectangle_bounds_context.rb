class CreateRectangleBoundsContext
  def self.call(rect_coords)
    CreateRectangleBoundsContext.new(rect_coords).call
  end

  def initialize(rect_coords)
    @rect_coords = rect_coords
    @klass = Object.new
    @klass.extend RectangleRoles
  end

  def call
    @klass.make_rectangle @rect_coords
  end
end