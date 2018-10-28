class Triangle
  attr_accessor :a, :b, :c, :x

  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
    @side_all = [@side_a, @side_b, @side_c]
  end

  def zero_or_negative?
    @side_all.include?(0) || @side_all.join.include?("-") ? true : false
  end
  # Check to find any zeroes OR negatives

  def valid_triangle?
    @side_a + @side_b > @side_c && @side_b + @side_c > @side_a && @side_a + @side_c > @side_b && !zero_or_negative? ? true : false
  end
  # Triangle inequality theorem - any two sides of a triangle must be greater than the 3rd side

  def equilateral?
    valid_triangle? && @side_a == @side_b && @side_a == @side_c ? true : false
  end
  # 3-way comparison. If @side_a equals @side_b AND @side_a equals @side_c then @side_b equals @side_c.

  def isosceles?
    valid_triangle? && @side_all.sort[1] == @side_all.sort[2] ? true : false
  end
  # Sorted all 3 side values (@side_all.sort) and compared the 2nd and 3rd values for equality since the remaining side @side_all[0] is always less than the other two.

  def scalene?
    valid_triangle? && !equilateral? && !isosceles? ? true : false
  end
  # Neither equilateral nor isosceles then it must be scalene.

  def kind
    if !valid_triangle?
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  class TriangleError < StandardError; end
end
