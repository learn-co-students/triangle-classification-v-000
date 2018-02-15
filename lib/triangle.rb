class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle_sides = [@side1, @side2, @side3]
  end

  
  def kind
    a, b, c = [@side1, @side2, @side3].sort
    if [@side1, @side2, @side3].min <= 0 || a + b <= c
      begin
        raise TriangleError
      end
    else
      case [@side1, @side2, @side3].uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end