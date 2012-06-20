class CheckCoordinatesContext
  def self.call(coords)
    CheckCoordinatesContext.new(coords).call
  end

  def initialize(coords)
    @coords = coords
    @klass = Object.new
    @klass.extend CoordinateRoles
  end

  def call
    @klass.check_coordinates @coords
  end
end