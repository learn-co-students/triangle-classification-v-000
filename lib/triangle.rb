require 'pry'
class Triangle
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
def kind
      if a == b && b == c
        return :equilateral
      elsif a == b || b == c || a == c
        return :isosceles
      else a != b && b != c && c != a
        return :scalene
      end
end

def illegal?
  if a >= 0 && b >= 0 && c >= 0
    raise TriangleError
  end
 
 
end
  
class TriangleError < StandardError
end



