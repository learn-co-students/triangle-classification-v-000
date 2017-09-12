class Triangle
  # write code here
  attr_accessor :length_a, :length_b, :length_c

  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

#triangle inequality = sum of the lengths of any two sides of a triangle always > length of the third side. Each side must be larger than 0 zero.
  def kind
    if length_a <= 0 || length_b <= 0 || length_c <= 0
      raise TriangleError
    elsif (length_a + length_b) <= length_c || (length_b + length_c) <= length_a || (length_a + length_c) <= length_b
      raise TriangleError
    elsif length_a == length_b && length_b == length_c && length_a == length_c #all sides and angles equal to each other
      :equilateral
    elsif length_a == length_b || length_b == length_c || length_a == length_c #only 2 sides are equal in length; the third has a length
      :isosceles
    else
      :scalene #all sides are not equal
    end
  end
end

class TriangleError < StandardError
  #triangle error code
    #triangle inequality = sum of the lengths of any two sides of a triangle always > length of the third side. Each side must be larger than 0 zero.
  "The lengths of two sides of a triangle should be greater than the length of the third side. Each side must be larger than 0 (zero)."
end
