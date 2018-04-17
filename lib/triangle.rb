class Triangle
  attr_accessor :length_1, :length_2, :length_3
  def initialize(length_1, length_2, length_3)
    @length_3 = length_3
    @length_2 = length_2
    @length_1 = length_1
  end
  def kind 
    if length_1 > 0 && length_2 > 0 && length_3 > 0
    if length_1 + length_2 <= length_3 || length_2 + length_3 <= length_1 || length_1 + length_3 <= length_2
      raise TriangleError
    elsif length_1 == length_2 && length_2 == length_3
      :equilateral
    elsif length_1 != length_2 && length_2 != length_3 && length_1 != length_3
      :scalene
    else
      :isosceles
    end
  else 
    raise TriangleError
  end
 end 

class TriangleError < StandardError
  "This is not a valid Triangle."
end
end  