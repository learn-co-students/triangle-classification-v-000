class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3].sort
  end

  def kind

    if @sides.any? {|x| x <= 0}
      raise TriangleError
    end

    if @sides[0] + @sides[1] <= @sides[2] ||@sides[0] + @sides[2] <= @sides[1] ||@sides[1] + @sides[2] <= @sides[0]
      raise TriangleError, "Not valid triangle lengths"
    end

    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  puts "TriangleError"
end
