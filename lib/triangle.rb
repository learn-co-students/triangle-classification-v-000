class Triangle
  attr_accessor :a, :b, :c
  
  class TriangleError < StandardError
    
  end 
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 
  
  def kind 
    if @a == 0 && @b == 0 && @c == 0 || @a <= 0 || @b <= 0 || @c <= 0 || @c >= @a + @b ||
      @a >= @b + @c || @b >= @c + @a 
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral 
    elsif @a == @b || @a == @c || @b == @c && @a != @b
      return :isosceles
    else 
      return :scalene
    end 
  end
    
end
