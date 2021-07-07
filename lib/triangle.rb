class Triangle
attr_accessor :x, :y, :z 

#   It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal

def initialize(x, y, z)
  @x = x 
  @y = y 
  @z = z
end 

def kind
    if not_negative == true && illegal == true 
      puts true
    else 
      raise TriangleError 
    end 
     if x == y && y == z 
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end

  def not_negative 
    x.positive? && y.positive? && z.positive?
  end 
  
  def illegal
    x + y > z && x + z > y && y + z > x
    end 
  end
  
  class TriangleError < StandardError
end