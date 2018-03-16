class Triangle
  
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    
    if @side_1 <= 0 || @side_1 <= 0 || @side_1 <= 0 || @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    end
  end

  def kind

    if @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
      return :isosceles
    else
      return :scalene
    end
  end

end


class TriangleError < StandardError
 "this is not a legal triangle"
end