class Triangle

  attr_accessor :side_1, :side_2, :side_3
  attr_reader :sides, :type

  def initialize(side_1, side_2, side_3)
    self.side_1 = side_1
    self.side_2 = side_2
    self.side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end

  def kind
    if self.sides.any? { |side| side <= 0 } || side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_3 + side_1 <= side_2
      raise TriangleError
    else
      if self.sides.uniq.length == 1
        @type = :equilateral
      elsif self.sides.uniq.length == 2
        @type = :isosceles
      elsif self.sides.uniq.length == 3
        @type = :scalene
      end
    end
  end

end

class TriangleError < StandardError

  def message
    "The side lengths provided do not produce a valid triangle."
  end

end
