class Triangle
  attr_reader :side_a, :side_b, :side_c, :kind
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  def kind
    self.error 
    case [side_a,side_b,side_c].uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else        :scalene
    end
  end
  def error
    if  side_a >= side_b + side_c || 
        side_b >= side_c + side_a || 
        side_c >= side_b + side_a
        raise TriangleError
    end 
  end
end
class TriangleError < StandardError
  def message
    "TriangleError"
  end
end