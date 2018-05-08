
class Triangle
  attr_accessor :side1, :side2, :side3
 
  def initialize(side1,side2,side3)
    @a = side1
    @b = side2
    @c = side3
  end 
  
   def validate_triangle
    real_triangle = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
    [@a, @b, @c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  
  def kind 
     
    self.validate_triangle
    
    if (@a == @b && @a == @c) 
      :equilateral
    elsif (@a == @b || @a == @c || @b == @c) 
      :isosceles
    elsif (@a != @b && @a != @c && @b != @c) 
      :scalene
    end
     
  end 
  
  class TriangleError < StandardError 
      def message 
      "Invalid Side Length"
      end
  end 
end
