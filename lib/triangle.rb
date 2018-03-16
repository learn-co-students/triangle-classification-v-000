class Triangle
  attr_accessor :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end

  def kind
    if self.all_positive? && self.triangle_inequality?
      if self.sides.uniq.size == 1
        :equilateral
      elsif self.sides.uniq.size == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def all_positive?
    self.sides.all? {|side| side > 0}
  end

  def triangle_inequality?
    self.sides.sort[2] - self.sides.sort[1] - self.sides.sort[0] < 0
  end

end

class TriangleError < StandardError

end
