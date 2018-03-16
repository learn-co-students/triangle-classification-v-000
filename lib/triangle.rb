class Triangle

  attr_accessor :length_side_1, :length_side_2, :length_side_3

  def initialize(length_side_1, length_side_2, length_side_3)
    @length_side_1 = length_side_1
    @length_side_2 = length_side_2
    @length_side_3 = length_side_3
  end

  def kind
    if (length_side_1 <= 0 || length_side_2 <=0 || length_side_3 <= 0) || (length_side_1 + length_side_2 <= length_side_3) || (length_side_1 + length_side_3 <= length_side_2) || (length_side_2 + length_side_3 <= length_side_1)
        raise TriangleError
    else
      if length_side_1 == length_side_2 && length_side_1 == length_side_3
        :equilateral
      elsif length_side_1 == length_side_2 || length_side_1 == length_side_3 || length_side_2 == length_side_3
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end
