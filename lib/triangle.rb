class Triangle
  # write code here
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @sides = []
  end
  
  def kind
    @sides = [@s1,@s2,@s3]
    s_sorted = @sides.sort
    
    if s_sorted.any?{|side| side <= 0} 
      raise TriangleError
        
    elsif s_sorted[0]+s_sorted[1] <= s_sorted[2]
      raise TriangleError
      
    elsif s_sorted.first == s_sorted.last
      :equilateral
    elsif s_sorted.first != s_sorted.last && s_sorted[0] == s_sorted[1] || s_sorted[1] == s_sorted[2]
      :isosceles
    elsif s_sorted[0] < s_sorted[1] && s_sorted[1] < s_sorted[2]
      :scalene
    end
    
    
  end
  
  
  class TriangleError < StandardError
    
  end
  
end
