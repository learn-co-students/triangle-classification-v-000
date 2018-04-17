class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def is_valid
    valid_triangle = [(length_1 + length_2 > length_3), (length_1 + length_3 > length_2), (length_2 + length_3 > length_1)]
        [length_1, length_2, length_3].each { |length| valid_triangle << false if length <= 0 }
        raise TriangleError if valid_triangle.include?(false)
  end

  def kind
    is_valid
    if length_1 == length_2 && length_1 == length_3
      return :equilateral
    elsif length_1 == length_2 && length_1 != length_3 || length_1 == length_3 && length_1 != length_2 || length_2 == length_3 && length_2 != length_1
      return :isosceles
    elsif length_1 != length_2 && length_1 != length_3
      return :scalene
    end



  end

  class TriangleError < StandardError

  end
end
