class Triangle

  attr_accessor :side_1, :side_2, :side_3, :sides

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end

  def kind
    self.check_validity
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 && @side_2 != @side_3 || @side_2 == @side_3 && @side_3 != @side_1 || @side_3 == @side_1 && @side_1 != @side_2
      :isosceles
    else
      :scalene
    end
  end

  def check_validity
    sorted_sides = @sides.sort
    if sorted_sides.include?(0)
      raise TriangleError
    else
      "The triangle has no sides that are 0 in length."
    end

    if (sorted_sides[0] + sorted_sides[1]) <= sorted_sides[2]
      raise TriangleError
    else
      "The sum of the shortest 2 sides are greater than the third."
    end
  end

end

class TriangleError < StandardError
end
