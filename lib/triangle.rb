require 'pry'
class Triangle
attr_reader :a, :b, :c

  def initialize(length_a, length_b, length_c)
  @a = length_a
  @b = length_b
  @c = length_c
  end 

  
  def kind 
    if a == b && b == c && a == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    elsif  a != b && b != c && c != a
      :scalene
    else
      [a,b,c].any?{ |x| length <= 0}
     
      raise TriangleError 
    end 
  end 

  
  # def validate_triangle
  #   true_triangle = [(a + b > c),  (a + c > b), (b + c > a)] 
  
  #   #[a,b,c].each { |x| true_triangle << false if  x <= 0}
      
  #     raise TriangleError if true_triangle.include? (false)
      
  #   end       
            
# #TriangleError => error
 #validate_triangle

class TriangleError < StandardError
  
end 

end

     
