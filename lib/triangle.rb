require 'pry'
class Triangle
  attr_accessor :side_1, :side_2, :side_3
  @@var = "one"
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    end

    if ((@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || (@side_3 + @side_2) <= @side_1)
      raise TriangleError
    end


    if @side_1 == @side_2 && @side_3 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    elsif !(@side_1 == @side_2 && @side_3 == @side_2 && @side_1 == @side_3)
      :scalene
    end
  end



end

class TriangleError < StandardError

end
