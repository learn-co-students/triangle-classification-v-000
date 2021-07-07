class Triangle
  attr_accessor :length_a, :length_b, :length_c
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end
  def kind
    if length_a <= 0 || length_b <= 0 || length_c <= 0 || (length_a + length_b) <= length_c || (length_a + length_c) <= length_b || (length_b + length_c) <= length_a
       raise TriangleError
    elsif
     length_a == length_b && length_b == length_c
      :equilateral
    elsif
      length_a == length_b || length_a == length_c || length_b == length_c
      :isosceles
    elsif
      length_a != length_b && length_a != length_c && length_b != length_c
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
