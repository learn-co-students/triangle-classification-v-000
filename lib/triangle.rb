class Triangle
  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

def kind
  len1 = @x + @y
  len2 = @x + @z
  len3 = @y + @z
  triangle = @x + @y + @z
  if(len1 <= @z || len2 <= @y|| len3 <= @x || @x == 0 || @y == 0 || @z == 0 ||triangle == 0)
    #begin
      raise TriangleError
  #  rescue TriangleError => error
      #puts error.message
    #end
  end
 if(@x == @y && @y == @z)
     :equilateral
   elsif(@x == @y && @x > @z|| @y == @z && @y > @x || @z == @x && @z > @y)
      :isosceles
   elsif(@x != @y && @y != @z && @z != @x)
     :scalene
  end
end
end

class TriangleError < StandardError

end
