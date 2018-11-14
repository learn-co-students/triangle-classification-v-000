require "pry"
class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x,y,z)
    @x=x
    @y=y
    @z=z
  end

  def kind
    validate_triangle
    if (x.positive? && y.positive? && z.positive? ) && ((@x+@y>@z && @y+@z>@x && @x+@z>@y))
      if x==y && y==z
         :equilateral
      elsif x==y || y==z || x==z
         :isosceles
      else
         :scalene
      end
    else
        raise TriangleError
    end
  end

  def validate_triangle
    real_triangle=[(x+y>z), (x+z>y), (y+z>x)]
    [x,y,z].each {|item| real_triangle << false if item<=0}
    raise TriangleError if real_triangle.include?(false)
  end

class TriangleError < StandardError
end

end
