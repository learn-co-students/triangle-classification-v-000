class Triangle

  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    test_array = [self.side_1, self.side_2, self.side_3].sort
    if test_array.any? { |side| side <= 0 } || (test_array[0] + test_array[1]) <= test_array[2]
        raise TriangleError
    elsif test_array.uniq.count == 1
      return :equilateral
    elsif test_array.uniq.count == 2
      return :isosceles
    else
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "not a valid triangle."
  end
end
