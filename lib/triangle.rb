class Triangle
  attr_accessor :type, :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    array = [self.side_1, self.side_2, self.side_3].sort
    if array.any? {|side| side <= 0 || (array[0] + array[1]) <= array[2]}
      raise TriangleError
    elsif array.uniq.count == 1
      return :equilateral
    elsif array.uniq.count == 2
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def messsage
    "not a valid triangle."
  end
end
