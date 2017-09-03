class Triangle

  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1,side2,side3]
  end

  def sides
    @sides
  end

  def kind
    self.sides.sort!
    if self.sides.any? { |side| side <= 0}
        raise TriangleError
    elsif sides[0] + sides[1] <= sides[2]
      raise TriangleError
    else
      if @sides.uniq.size == 1
        :equilateral
      elsif @sides.uniq.size == 2
        :isosceles
      elsif @sides.uniq.size == 3
        :scalene
      end
    end
  end
end


class TriangleError < StandardError
  def message
    "You must enter a valid triangle."
  end
end
