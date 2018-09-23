class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def kind
    if sides.none? { |side| side > 0 }
      raise TriangleError
    elsif (@a + @b <= @c) || (@a + @c <= @b) || (@b + @c <= @a)
      raise TriangleError
    end

    case sides.uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
