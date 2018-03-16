require "pry"
class Triangle
  attr_accessor :length_a, :length_b, :length_c

  def initialize(length_a,length_b,length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

  def kind
    if not_a_triangle
      # begin
        raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    # end
    elsif
      length_a == length_b && length_a == length_c
      :equilateral
    elsif length_a == length_b || length_b == length_c || length_a == length_c
      :isosceles
    elsif length_a != length_b && length_b != length_c && length_a != length_c
      :scalene
    end
  end

  def not_a_triangle
    no_sides || neg_sides || violates_inequality
  end

  def no_sides
    length_a == 0
  end

  def neg_sides
    length_a < 0 || length_b < 0 || length_c < 0
  end

  def violates_inequality
    length_a + length_b <= length_c ||
    length_b + length_c <= length_a ||
    length_a + length_c <= length_b
  end

end

class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
  end
end

# Triangle.new(7, 3, 2).kind
