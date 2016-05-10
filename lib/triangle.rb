class Triangle
  
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    a,b,c = [@side_1, @side_2, @side_3].sort
   if [@side_1, @side_2, @side_3].min <= 0 || a + b <= c
      raise TriangleError
  
    else
      case [a,b,c].uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
