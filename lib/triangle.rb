require 'pry'
class Triangle
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
  
    if ( a <= 0 || b <= 0 || c <= 0) || ( a + b <= c || b + c  <= a || c + a <= b)
        raise TriangleError
    end
      case 
        when a == b && b == c
            return :equilateral
        when a == b || b == c || a == c
            return :isosceles
        else a != b && b != c && c != a
            return :scalene
      end
  end
end 
  
class TriangleError < StandardError
 # triangle error code
end


 
  






