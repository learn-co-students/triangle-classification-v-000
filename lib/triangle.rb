class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
   @a = a 
   @b = b 
   @c = c
  end
  
  def kind
    sides_array = [a,b,c]
    sorted = sides_array.sort
    min = sorted[0]
    mid = sorted[1]
    max = sorted[2]
    
    if sides_array.min <= 0 || min + mid <= max
      raise TriangleError
    end
  
    
    if sides_array.uniq.size <= 1
      :equilateral
    elsif sides_array.uniq.length == 2
      :isosceles
    else 
      :scalene
    end
    
  end
      
  class TriangleError < StandardError
    # triangle error code
  end
  
end
