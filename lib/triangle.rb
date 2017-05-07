class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def valid_triangle?
    if  equilateral <= 0 || isosceles <= 0 || scalene <= 0
      raise TriangleError
    end
  end

def inequality_triangle
  if equilateral + isosceles < scalene || isosceles + scalene < equilateral || equilateral + scalene <= isosceles
    raise TriangleError
  end
end

  def kind
    valid_triangle?
    inequality_triangle
    if equilateral == isosceles && isosceles == scalene
        :equilateral
    elsif equilateral == isosceles || isosceles == scalene || equilateral == scalene
        :isosceles
    else
        :scalene
      end
    end
  end

class TriangleError < StandardError
  end
