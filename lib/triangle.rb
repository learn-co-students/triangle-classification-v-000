require 'pry'

class Triangle
  # write code here
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
  end
  
  def kind
      if (a + b) <= c || (b + c) <= a || (c + a) <= b || a <= 0 || b <= 0 || c <=0
          raise TriangleError
      end
      if a == b && a == c
          :equilateral
      elsif a == b  || a == c  || b == c
            :isosceles
      else
            :scalene
      end
  end
  

end

class TriangleError < StandardError
end
  