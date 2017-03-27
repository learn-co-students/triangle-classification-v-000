class Triangle
  attr_accessor :length_1, :length_2, :length_3, :kind

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3

    if ((@length_1 == @length_2) && (@length_1 == @length_3) && (@length_2 == @length_3))
      @kind = :equilateral
    elsif ((@length_1 == @length_2) || (@length_1 == @length_3) || (@length_2 == @length_3))
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def kind
    raise TriangleError if @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0
    raise TriangleError if ((@length_1 + @length_2) <= @length_3)
    raise TriangleError if ((@length_1 + @length_3) <= @length_2)
    raise TriangleError if ((@length_2 + @length_3) <= @length_1)
    @kind
  end
end

class TriangleError < StandardError
  def message
    "Your triangle is not valid!"
  end
end
