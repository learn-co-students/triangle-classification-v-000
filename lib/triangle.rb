class Triangle

  attr_accessor :side_one, :side_2, :side_3
  
  def initialize(side_one, side_2, side_3)
    @side_1 = side_one
    @side_2 = side_2
    @side_3 = side_3

  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
      raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :isosceles
    else
      return :scalene 
    end
  end

end

class TriangleError < StandardError
  def message
    puts "That is not a valid triangle."
  end
end



