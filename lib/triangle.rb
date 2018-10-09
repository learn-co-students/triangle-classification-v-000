class Triangle
  # write code here
  attr_accessor :a, :b, :c 
  
  def initialize(la, lb, lc)
    @a = la 
    @b = lb
    @c = lc 
  end 
  

  
  def kind
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a || @a <= 0 || @b <= 0 || @c <= 0 
      begin  
        raise TriangleError 
      end 
    
    elsif  @a == @b && @b == @c
      :equilateral 
    elsif @a == @b && @b != @c 
      :isosceles
    elsif @b == @c && @a != @b
      :isosceles
    elsif  @a == @c && @a != @b 
      :isosceles
    elsif @a != @b && @b != @c && @a != @c 
      :scalene 
    end 
      

  end 
  
  class TriangleError < StandardError 
      
  end 
   
  
end
