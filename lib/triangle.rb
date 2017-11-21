class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if triangle1 == true && triangle2 == true
     puts true
   else
     raise TriangleError
   end

   if x == y && y == z && x == z
     :equilateral
   elsif x != y && y != z && z != x
     :scalene
   else
     :isosceles
   end
 end

 def triangle1
# the following must be positive to be a valid triangle
  x.positive? && y.positive? && z.positive?
end

def triangle2
  #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
  #This is a principle known as the triangle inequality.
  x + y > z && x + z > y && y + z > x
 end
end


class TriangleError < StandardError

end
