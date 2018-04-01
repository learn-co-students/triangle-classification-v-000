require 'pry'

class Triangle
  attr_accessor :sides, :inequality

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]

  end

  def invalid?
    sums = sides.combination(2).to_a.map { |combo| combo.reduce(:+) }
    sides_and_sums = { "#{sides[0]}" => sums[2], "#{sides[1]}" => sums[1], "#{sides[2]}" => sums[0] }
    sides_and_sums.any? { |side, sum| sum <= side.to_i } || sides.any? { |side| side <= 0 }
  end

  def kind
    if self.invalid?
      begin
        raise TriangleError
      end
    elsif sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Each side must be greater than 0. The sum of each two sides must be greater than the third."
  end
end
#
triangle = Triangle.new(0, 0, 0)
triangle.invalid?
triangle.kind
