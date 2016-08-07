class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def triangle?
    @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2 && @length1 > 0 && @length2 > 0 && @length3 > 0
  end

  def kind
    raise TriangleError if !triangle?
    if triangle? && @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif triangle? && (@length1 == @length2 && @length2 != @length3) || (@length2 == @length3 && @length3 != @length1) || (@length1 == @length3 && @length1 != @length2)
      :isosceles
    else triangle? && @length1 != @length2 && @length2 != @length3
      :scalene
    end
  end

end

class TriangleError < StandardError

  def message
    "That's not a triangle, so I can't tell you what kind of triangle it is!"
  end
end