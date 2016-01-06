class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    case
    when length1 <= 0 || length2 <= 0 || length3 <= 0
      raise TriangleError
    when (length1 + length2) <= length3 || (length2 + length3) <= length1 || (length1 + length3) <= length2
      raise TriangleError
    when length1 == length2 && length2 == length3
      :equilateral
    when length2 == length3 || length1 == length3 || length1 == length2
      :isosceles
    when length1 != length2 && length2 != length3
      :scalene
    end
  end
end
  
class TriangleError < StandardError
end