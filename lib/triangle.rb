require 'pry'
class Triangle
attr_reader :a, :b, :c

  def initialize(length_a, length_b, length_c)
  @a = length_a
  @b = length_b
  @c = length_c
  end 

  
  def kind 
    validate_triangle
    # if  [a,b,c].any?{ |x| x <= 0}  
    #   binding.pry
    #   raise TriangleError
    # end
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else 
      :scalene
    
    end 
  end 
 
  
  def validate_triangle
     true_triangle = [(a + b > c),  (a + c > b), (b + c > a)] 
  
    [a,b,c].each { |x| true_triangle << false if  x <= 0}
      
       raise TriangleError if true_triangle.include?(false)
     end  

class TriangleError < StandardError
 
end
end
     
