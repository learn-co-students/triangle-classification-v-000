class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if length1 <= 0 || length2 <= 0 || length3 <=0
      raise TriangleError, "Sides must have a value greater than 0."
    elsif length1 + length2 <= length3 || length1 + length3 <= length2 || length2 + length3 <= length1
      raise TriangleError, "One side is too long."
    elsif length1 == length2 && length2 == length3
      return :equilateral
    elsif length1 == length2 || length1 == length3 || length2 == length3
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError

end
