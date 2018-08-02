require 'pry'
class Triangle
  
  attr_accessor :a, :b, :c
  
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  
  # binding.pry
  def kind 
    valid_triangle
    
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
    
  end
   
  def valid_triangle
    if a <= 0 || b <= 0 || c <= 0
     raise TriangleError
    elsif a + b <= c || c + b <= a || a + c <= b
      raise TriangleError
    end
  end 
  
  class TriangleError < StandardError

  end
  
end

