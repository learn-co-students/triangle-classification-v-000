class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  def initialize(length_1, length_2, length_3)
    @side_1 = length_1
    @side_2 = length_2
    @side_3 = length_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError

    elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
      raise TriangleError


    elsif @side_1 == @side_2 && @side_2 == @side_3 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    else
      :scalene
    end
  end


end

class TriangleError < StandardError

end
