class Triangle
  attr_reader :side1, :side2, :side3, :all_sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [side1, side2, side3]
  end

  def triangle?
    side1 + side2 > side3 &&
    side1 + side3 > side2 &&
    side2 + side3 > side1 &&
    all_sides.all? { |side| side > 0 }
  end

  def kind
    case true
    when !triangle?
      # raise error when not a triangle
      raise TriangleError
    when all_sides.uniq.size == 1
      # true if all sides are of equal length
      :equilateral
    when all_sides.uniq.size == 2
      # true if 2 sides are of equal length
      :isosceles
    when all_sides.uniq.size == 3
      # true if all sides are of unequal length
      :scalene
    end
  end

end


class TriangleError < StandardError
end
