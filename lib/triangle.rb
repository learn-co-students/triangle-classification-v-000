require 'pry'
class Triangle # triangle code
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c  
  end
  def kind
    triangle_validation
     if a == b && b == c
        :equilateral
     elsif a == b || b == c || a == c
        :isosceles
     else
        :scalene
     end
  end
  def triangle_validation
  triangle = [(a + b > c ),(b + c > a),(a + c > b)]
  triangle.each do |e|
   
 raise TriangleError if e == false
    end
  end
  
end
 
class TriangleError < StandardError  # triangle error code
 
end
