require "pry"
class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if self.first <= 0 && self.second <= 0 && self.third <= 0 || (self.first + self.second <= self.third) || (self.second + self.third <= self.first) || (self.first + self.third <= self.second)
      raise TriangleError
    elsif self.first == self.second && self.second == self.third
      :equilateral
    elsif self.first == self.second || self.second == self.third || self.first == self.third
      :isosceles
    elsif self.first != self.second && self.second != self.third
      :scalene
    end
  end

end

class TriangleError < StandardError
end
