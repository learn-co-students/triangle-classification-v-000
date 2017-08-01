class Triangle
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if (@length1 <= 0 || @length2 <= 0 || @length3 <= 0) || (@length1 + @length2 <= @length3) || (@length1 + @length3 <= @length2) || (@length2 + @length3 <= @length1)
      begin
        raise TriangleError
      end
    elsif @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "This is not a triangle!"
  end
end
