class Triangle

  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z 
  end

  def kind   
    if real_triangle_test1 == true && real_triangle_test2 == true 
      true
    else 
      raise TriangleError   
    end

    if x == y && x == z && y == z 
      :equilateral
    elsif x != y && x != z && y != z
      :scalene
    else
      :isosceles
    end
  end

  def real_triangle_test1
    x.positive? && y.positive? && z.positive? 
  end

  def real_triangle_test2
    (x + y > z) && (x + z > y) && (y + z > x)
  end
 
  class TriangleError < StandardError
    # triangle error code
  end
end

