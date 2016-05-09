class Triangle
  
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
  	@side_1 = side_1
  	@side_2 = side_2
  	@side_3 = side_3
  end

  def kind
  	if @side_1 <= 0 or @side_2 <= 0 or @side_3 <= 0
  	  raise TriangleError
  	elsif (@side_1 + @side_2 <= @side_3) or (@side_2 + @side_3 <= @side_1) or (@side_1 + @side_3 <= @side_2)
  	  raise TriangleError
  	elsif @side_1 == @side_2 and @side_1 == @side_3
  	  :equilateral
    elsif @side_1 == @side_2 or @side_1 == @side_3 or @side_2 == @side_3
  	  :isosceles
  	else @side_1 != @side_2 and @side_1 != @side_3 and @side_2 != @side_3
  	  :scalene	
  	end
  end


end

class TriangleError < StandardError

end