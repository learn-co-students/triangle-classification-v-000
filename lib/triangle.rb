class TriangleError < StandardError
 # Should I have some type of error message here?
end

class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3

    if length_1 == 0 || length_2 == 0 || length_3 == 0
      begin
        raise TriangleError
      end
    end

    if length_1 + length_2 <= length_3 || length_1 + length_3 <= length_2 || length_2 + length_3 <= length_1
      begin
        raise TriangleError
      end
    end
  end

  def kind
    if length_1 == length_2 && length_1 == length_3
      :equilateral
    elsif length_1 != length_2 && length_2 != length_3 && length_1 != length_3
      :scalene
    else
      :isosceles
    end
  end
end
