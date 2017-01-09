class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def triangle_valid?
    (@side_1 + @side_2 > @side_3) && (@side_1 + @side_3 > @side_2) && (@side_2 + @side_3 > @side_1) && (@side_1 > 0) && (@side_2 > 0) && (@side_3 > 0)
  end

  def kind
    if triangle_valid? == false
        raise TriangleError
      elsif @side_1 == @side_2 && @side_2 == @side_3
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
