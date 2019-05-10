class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
   @a = a
   @b = b
   @c = c 
  end 
  
  def kind
    if a <= 0 
      raise TriangleError
      elsif a+b <= c || b+c <= a || a+c <= b 
      raise TriangleError
      elsif a == b && a != c || b == c &&  b != a|| a == c && a != b
      return :isosceles
      elsif a == b && a == c 
      return :equilateral
    else 
      :scalene
    end 
  end 
  
  
  class TriangleError < StandardError 
  end
  
end
