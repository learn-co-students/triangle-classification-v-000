class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :kind

  def initialize(one, two, three)
    @side1 = one
    @side2 = two
    @side3 = three
    @@sides_array = [@side1, @side2, @side3]
    invalid?
  end

  def invalid?
    raise TriangleError if @@sides_array.any? {|side| side <= 0}
    raise TriangleError if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side3 + @side1 <= @side2)
  end

  def kind
    return :equilateral if @@sides_array.all? {|side| side == @@sides_array[0]}
    return :isosceles if ((@side1 == @side2 && @side2 != @side3)||(@side2 == @side3 && @side3 != @side1)||(@side3 == @side1 && @side1 != @side2))
    return :scalene if ((@side1 != @side2) && (@side2 != @side3))
  end
end

class TriangleError < StandardError

end
