class Triangle
  attr_accessor :x, :y, :z 
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind 
    if (over_zero? && valid_sides?) == false 
      begin 
        raise TriangleError 
      end 
    elsif (x == y) && (y == z) && (x == z)
      :equilateral
    elsif (x != y) && (y != z) && (x != z)
      :scalene 
    else 
      :isosceles 
    end 
  end 
  
  def over_zero? 
    if (x > 0) && (y > 0) && (z > 0)
      true 
    else
      false 
    end
  end 
  
  def valid_sides?
    if (x + y > z) && (y + z > x) && (x + z > y)
      true 
    else 
      false 
    end 
  end 
  
end 
  
class TriangleError < StandardError 
end 




