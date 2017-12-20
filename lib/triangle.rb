class Triangle
  attr_accessor :x,:y,:z


    def initialize(x,y,z)
      @x = x
      @y = y
      @z = z
    end

  def kind
      if x < 0 || y < 0 || z < 0 ||  x == 0 || y == 0 || z == 0 || y+z < x || y > x+z || z > x+y || y+z == x || y == x+z || z == x+y  
        raise TriangleError

      elsif x == y && x == z
        return :equilateral

      elsif x != y && x != z && y != z
          return :scalene

      else
        return :isosceles
    end
  end
end


  class TriangleError < StandardError
    def message
      "Nah, though. That's a bad triangle."
    end
end
