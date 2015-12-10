class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 

  def kind 
    if @a + @b <= @c || @b + @c <= @a || @c + @a <= @b || @a == 0 || @b == 0 || @c == 0
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b == @c || @c == @a
      return :isosceles
    else 
      return :scalene   
    end    
  end 

end  

class TriangleError < StandardError 
end