class Triangle
  attr_accessor :type :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    validate_triangle
    if length_1 == length_2 && length_1 == length_3
      @type = :equilateral
    elsif length_2 == length_3 || length_1 == length_3 || length_1 == length_2
      @type = :isosceles
    else
      @type = :scalene
    end
    @type
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end


class TriangleError < StandardError
end
