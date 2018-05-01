class Triangle
  # write code here
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    if @length_1 <= 0 or @length_2 <= 0 or @length_3 <= 0
      raise TriangleError
    elsif (@length_1+@length_2<=@length_3) or (@length_1+@length_3<=@length_2) or (@length_2+@length_3<=@length_1)
      raise TriangleError
    end
  end

  def kind
    if @length_1 == @length_2 and @length_2 == @length_3
      :equilateral
    elsif @length_1 == @length_2 or @length_1 == @length_3 or @length_2 == @length_3
      :isosceles
    elsif @length_1 != @length_2 and @length_1 != @length_3 and @length_2 != @length_3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
