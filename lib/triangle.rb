class Triangle

  attr_accessor :right_Side, :left_side, :bottom_side
  attr_reader :sorted

  def initialize(right_Side, left_side, bottom_side)
    @right_Side = right_Side
    @left_side = left_side
    @bottom_side = bottom_side
    @sorted = [@right_Side, @left_side, @bottom_side].sort
  end

  def kind
    if self.sorted[0] + self.sorted[1] <= self.sorted[2] || self.sorted.any? {|side| side <= 0}
      raise TriangleError
    else
      case self.sorted.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
      end
    end

end

  class TriangleError < StandardError
  end
