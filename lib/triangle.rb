class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    sum_12 = length_1 + length_2
    sum_13 = length_1 + length_3
    sum_23 = length_2 + length_3

    raise TriangleError unless length_1 > 0 && length_2 > 0 && length_3 > 0 && sum_12 > length_3 && sum_23 > length_1 && sum_13 > length_2

    if length_1 == length_2 && length_1 == length_3
      :equilateral
    elsif length_1 == length_2 && length_1 != length_3
      :isosceles
    elsif length_2 == length_3 && length_2 != length_1
      :isosceles
    elsif length_1 == length_3 && length_1 != length_2
      :isosceles
    elsif length_1 != length_2 && length_1 != length_3 && length_2 != length_3
      :scalene
    end 
  end

  class TriangleError < StandardError
  end
end
