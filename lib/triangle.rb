require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three
  attr_reader :sides_sorted

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides_sorted = [@side_one, @side_two, @side_three].sort
  end

  def kind
    if self.sides_sorted[0] + self.sides_sorted[1] <= self.sides_sorted[2] || self.sides_sorted.any? {|side| side <= 0}
      raise TriangleError
    else
      case self.sides_sorted.uniq.length
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
