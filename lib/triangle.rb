class TriangleError < StandardError
 # triangle error code
end

class Triangle
  # write code here
  attr_reader :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end

  def kind
    if sides[0] + sides[1] <= sides[2] || sides[0] + sides[2] <= sides[1] || sides[1] + sides[2] <= sides[0] || sides.any? {|s| s == 0}
      raise TriangleError
    elsif sides.uniq.count == 1
      :equilateral
    elsif sides.uniq.count == 2
      :isosceles
    elsif sides.uniq.count == 3
      :scalene
    end
  end

end
