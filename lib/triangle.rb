class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if  triangle_valid?
      if @side_1 == @side_2 && @side_1 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end

  end

  def triangle_valid?
    @side_1 > 0 && @side_2 > 0 && @side_3 > 0 &&
    (@side_1 + @side_2) > @side_3 && (@side_2 + @side_3) > @side_1 && (@side_1 + @side_3) >@side_2
  end

end

class TriangleError < StandardError
end