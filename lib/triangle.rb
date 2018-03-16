require 'pry'
class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3, :all_lengths

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    @all_lengths = []
    @all_lengths << length_1
    @all_lengths << length_2
    @all_lengths << length_3
  end

  def all_lengths
    @all_lengths
  end

  def is_invalid?
    if self.all_lengths.any? {|length| length <= 0}
      true
    elsif self.length_1 + self.length_2 <= self.length_3
      true
    elsif self.length_2 + self.length_3 <= self.length_1
      true
    elsif self.length_1 + self.length_3 <= self.length_2
      true
    else
      false
    end
  end

  def kind
    if self.is_invalid?
      raise TriangleError
    elsif @length_1 == @length_2 && @length_2 == @length_3 && @length_1 != 0
      :equilateral
    elsif @length_1 != @length_2 && @length_2 != @length_3 && @length_3 != @length_1
      :scalene
    else
      :isosceles
    end
  end
end

class TriangleError < StandardError
  def message
    return "This is not a valid triangle."
  end
end
