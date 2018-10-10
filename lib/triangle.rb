class Triangle
attr_reader :a, :b, :c

  def initialize(length_a, length_b, length_c)
  @a = length_a
  @b = length_b
  @c = length_c
  end 

  def equilateral
    a == b &&  b == c &&  a == c 
  end 

  def isosceles
    a == b && b == c && c !=  a
  end 

  def scalene
    a != b && b != c && c != a
  end 
 
  def kind 
    if a == b && b == c && a == c
      :equilateral
     
    elsif a == b || b == c || c == a
      :isosceles
      
    else 
      :scalene
      end
    # else
    #   raise TriangleError
    # end 
  end 

  

  def validate_triangle
    true_triangle = [(a + b > c),  (a + c > b), (b + c > a)] 
    
    [a,b,c].each { |x| true_triangle << false if  x <= 0}
      #if [a,b,c] > 0 && actual_triangle
      #           true
      # else    
      
      raise TriangleError if true_triangle.include? (false)
      
    end       
            
# #TriangleError => error
 

class TriangleError < StandardError
end 

end

     
