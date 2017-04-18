require 'pry'
class Triangle

  attr_reader :all_sides

  def initialize(a, b, c)
    @all_sides = [] #trying to abstract validation with private methods
    @all_sides << a
    @all_sides << b
    @all_sides << c
  end

  def kind
    raise TriangleError if check_side_length? || check_summ_of_sides?
    if self.all_sides.uniq.length == 1
      :equilateral
    elsif self.all_sides.uniq.length != self.all_sides.length
      :isosceles
    else
      :scalene
    end
  end

  private
  def check_summ_of_sides? #trying to abstract
    self.all_sides.collect.with_index.any? do |value, i|
      value >= self.all_sides.reject.with_index {|v, j| j == i}.inject(0, :+)
    end
  end

  def check_side_length? #trying to abstract
    self.all_sides.any? {|value| value <= 0}
  end
end

class TriangleError < StandardError
end
