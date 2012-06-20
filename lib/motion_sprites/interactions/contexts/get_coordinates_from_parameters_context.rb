class GetCoordinatesFromParametersContext
  def self.call(coords)
    GetCoordinatesFromParameters.new(coords).call
  end
  
  def initialize(coords)
    @coords = coords
    @klass = Object.new
    @klass.extend CoordinateRoles
  end
  
  def call
    @klass.get_coordinates_from_parameters @coords
  end
end