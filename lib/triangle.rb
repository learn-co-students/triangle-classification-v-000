class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind

    #t = (x + y + z) / 2.0

  #the following must be positive to be a valid triangle
    valid1 = x.positive? && y.positive? && z.positive?
    valid2 = x + y > z && x + z > y && y + z > x

    if valid1 && valid2
      true
    else
     raise TriangleError
    end
    #if valid_triangle == true && valid_triangle2 == true
     #true
    #else
     #raise TriangleError
    #end

    if x == y && x == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  #def valid_triangle
  #  x.positive? && y.positive? && z.positive?
  #end

  #def valid_triangle2
  #  x + y > z && x + z > y && y + z > x
  #end

end


class TriangleError < StandardError
 # triangle error code
end
