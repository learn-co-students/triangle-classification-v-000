class Triangle

  attr_accessor :length1, :length2, :length3, :lengths

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @lengths = [length1, length2, length3]
  end

  def kind
    if lengths.all?{ |length| length > 0} && length1 + length2 > length3 &&
      length2 + length3 > length1 && length1 + length3 > length2
      if length1 == length2 && length2 == length3
        :equilateral
      elsif length1 == length2 || length2 == length3 || length1 == length3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "Invalid triangle"
  end
end
