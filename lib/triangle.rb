class Triangle
  # write code here
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if triangle_inequality == true  
      puts true 
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else 
      :scalene
    end 
  end
  
  def triangle_inequality
    x > 0 && y > 0 && z > 0
    x + y > z && x + z > y && y + z > x
  end 
  
  class TriangleError < StandardError
  
  end
end





