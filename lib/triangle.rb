class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if ( @side_1 + @side_2 + @side_3 == 0 ) ||  # all sides cannot be 0
       ( (@side_1 <  0) || (@side_2 <  0) || (@side_3 <  0) ) ||  # no side can be a negative size
       ( ((@side_1 + @side_2) <= @side_3) || ((@side_3 + @side_1) <= @side_2) || ((@side_2 + @side_3) <= @side_1) )  # sum of any two sides must be greater than the third
      raise TriangleError
    elsif (@side_1 == @side_2) && (@side_2 == @side_3)  # all sides are of equal size
      return :equilateral
    elsif (@side_1 == @side_2) || (@side_1 == @side_3) || (@side_2 == @side_3)  # only two sides are of equal size
      return :isosceles
    else
      return :scalene  # no sides are of equal size
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
