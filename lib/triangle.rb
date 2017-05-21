class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end
  def kind
    @sides.each{ |side| raise TriangleError if side <= 0 }
    raise TriangleError if @sides[0] >= @sides[1] + @sides[2]
    raise TriangleError if @sides[1] >= @sides[0] + @sides[2]
    raise TriangleError if @sides[2] >= @sides[0] + @sides[1]

    type = :equilateral if @sides.uniq.count == 1
    type = :isosceles if @sides.uniq.count == 2
    type = :scalene if @sides.uniq.count == 3
    type
  end
end

class TriangleError < StandardError
end
