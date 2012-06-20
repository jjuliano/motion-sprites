module CoordinateRoles
  def get_coordinates_from_parameters(coords)
    case coords
    when String
      coords = coords.gsub(/[^[:digit:]]/, ' ').split
      unless coords.size < 4
        [coords[0], coords[1], coords[2], coords[3]]
      end
    end
  end

  def check_coordinates(coords)
    case coords
    when Hash
      if (coords.has_key?(:width) && coords.has_key?(:height) && coords.has_key?(:x) && coords.has_key?(:y))
        [coords[:x], coords[:y], coords[:width], coords[:height]]
      end
    when Array
      flat_array = coords.flatten
      unless flat_array.size < 4
        [flat_array[0], flat_array[1], flat_array[2], flat_array[3]]
      end
    end
  end
end