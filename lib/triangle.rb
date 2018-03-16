class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
       raise TriangleError
    elsif (@length1 + @length2) <= @length3 || (@length2 + @length3) <= @length1 || (@length1 + @length3) <= @length2
       raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      :isosceles
    else @length1 != @length2 && @length2 != @length3
      :scalene
    end
  end

end

class TriangleError < StandardError

end
