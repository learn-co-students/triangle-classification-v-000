class Triangle
  attr_accessor :x, :y, :z

  #initi with 3 args and save them to 3 variables
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end


#if both mthoeds return true and
#if x==y and y==z and x==z; its an equilateral
#elsif x does not equal to y and y does not equal to z and z doesn not equal to x; its a scalene
#else its an isosceles
#if the first statement is false; it raise a custom Error which inherits from the StandardError

  def kind
    if kosher_triangle == true && kosher_triangle2 == true
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

#returns true if x,y and z are post enum
  def kosher_triangle
    x.positive? && y.positive? && z.positive?
  end

#returns true if x+y is greater than z and x+z > y and y+z > x
  def kosher_triangle2
    x + y > z && x + z > y && y + z > x
  end
end


#TriangleError class inherits from the StandardError class
class TriangleError < StandardError

end
