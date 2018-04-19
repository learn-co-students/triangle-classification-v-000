class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a  
    @b = b  
    @c = c
  end
  
  def kind 
    if a+b <= c || a+c <= b || b+c <= a || a <= 0 || b <= 0 || c <= 0
      begin
        raise TriangleError
      end
    elsif a == b && b == c 
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
   
  end
end
