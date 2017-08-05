require 'pry'
class Triangle
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    case 
      when a == b && b == c
          return :equilateral
      when a == b || b == c || a == c
          return :isosceles
      when a != b && b != c && c != a
          return :scalene
      when a <= 0 && b <= 0 && c <= 0
         raise TriangleError
      else a + b > c|| b + c  > a || c + a > b
        raise TriangleError
    end
  end


 
 
  
class TriangleError < StandardError
end

end



