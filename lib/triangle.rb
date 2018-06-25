class Triangle

  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(a,b,c)
    @side_a = a 
    @side_b = b 
    @side_c = c 
  end
  
  def valid?
    if @side_a == 0 || @side_b == 0 || @side_c == 0 || @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a
      false 
    else
      true 
    end
  end
  
  def kind 
    if !valid?
      raise TriangleError
    elsif @side_a == @side_b && @side_b == @side_c 
      return :equilateral
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "You must enter a valid triangle"
    end
  end

end
