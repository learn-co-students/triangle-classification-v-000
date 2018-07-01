class Triangle
 attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides_array = [@side_a, @side_b, @side_c]
  end

  def valid?
    sorted_sides = @sides_array.sort
    valid_lengths = @sides_array.all? { |side| side >= 0 }
    valid_lengths && (sorted_sides[0] + sorted_sides[1] > sorted_sides[2])
  end

  def kind
    if valid?
      case @sides_array.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end