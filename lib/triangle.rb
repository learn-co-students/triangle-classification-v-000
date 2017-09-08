class Triangle
  attr_accessor :x, :y, :z
  # write code here
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z

    def kind
      if x<=0||y<=0||z<=0 || x+y<=z || x+z<=y || y+z<=x
         raise TriangleError

      elsif x==y && y==z
        :equilateral
      elsif x==y || y==z || x==z
        :isosceles
      elsif x!=y && x!=z && y!=z
        :scalene
      else
        raise TriangleError
      end
    end
end #initialize
end

class TriangleError < StandardError
 # triangle error code
end
