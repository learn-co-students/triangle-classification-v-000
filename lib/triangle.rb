class Triangle
  attr_accessor :length_1, :length_2, :length_3
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def inequality
    if length_1 + length_2 > length_3 && length_2 + length_3 > length_1 && length_3 + length_1 > length_2 && length_1 > 0 && length_2 > 0 && length_3 > 0
      true
    else
      raise TriangleError
    end
  end

  def kind
    if inequality == true && length_1 == length_2 && length_2 == length_3 && length_1 == length_3
      :equilateral
    elsif inequality == true && length_1 == length_2 || length_2 == length_3 || length_1 == length_3
      :isosceles
    else inequality == true
      :scalene
    end
  end
end

class TriangleError < StandardError

end
