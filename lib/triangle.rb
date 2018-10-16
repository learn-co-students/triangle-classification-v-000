class Triangle
  
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c 
    
    if 
     (@side_a <= 0) ||
     (@side_b <= 0) ||
     (@side_c <= 0)
      raise TriangleError
    end
    
    if  
     (@side_a + @side_b) <= @side_c ||
     (@side_a + @side_c) <= @side_b ||
     (@side_c + @side_b) <= @side_a
        raise TriangleError
      end
  end
  
  def kind 
    if @side_a == @side_b && @side_a == @side_c
      :equilateral 
    elsif 
      (@side_a == @side_b && @side_a != @side_c) ||
      (@side_a == @side_c && @side_a != @side_b) ||
      (@side_b == @side_c && @side_b != @side_a)
      :isosceles
    else 
      @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      :scalene
    end
  end
  
  class TriangleError < StandardError
end

end 