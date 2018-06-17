class Triangle

attr_accessor :a, :b, :c
def initialize(a, b, c)
  @a = a 
  @b = b 
  @c = c
end 

def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end

    if a+b <= c || a+c <= b || b+c <= a
      raise TriangleError
    end

  if a == b && b == c && a == c
    :equilateral
  elsif a != b && b != c && c != a
    :scalene
  else
    :isosceles
  end
end
  
  
  
  
 class TriangleError < StandardError
   def message
    "Invalid triangle"
  end 
end 
  
end 