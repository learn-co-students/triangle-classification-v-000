class Triangle
  # write code here
  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    validate_triange
    if length1==length2 && length2==length3
      :equilateral
    elsif length1==length2 || length2==length3 || length1==length3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triange
    real_triangle = [(length1 + length2 > length3), (length1 + length3 > length2), (length2 + length3 > length1)]
    [length1, length2, length3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

end


class TriangleError < StandardError
end
