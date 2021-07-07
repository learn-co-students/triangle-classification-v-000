class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

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
  
  def kosher_triangle 
    x.positive? && y.positive? && z.positive?
  end 
  
  def kosher_triangle2 
    x + y > z && x + z > y && y + z > x
  end 
end

class TriangleError < StandardError
  
end

a = Triangle.new(5, 5, 5)
a.kind
