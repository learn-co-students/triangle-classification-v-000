require 'pry'

class Triangle

  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if length_one <= 0 || length_two <= 0 || length_three <= 0 || length_one == length_two && length_three >= length_one + length_two || length_one == length_three && length_two >= length_one + length_three || length_two == length_three && length_one >= length_two + length_three ||  length_one >= length_two + length_three || length_two >= length_one + length_three || length_three >= length_two + length_three
      raise TriangleError
    elsif length_one == length_two && length_two != length_three || length_two == length_three && length_two != length_one || length_one == length_three && length_one != length_two && length_one > 0 && length_two > 0 && length_three > 0
      :isosceles
    elsif length_one != length_two && length_two != length_three && length_three != length_one && length_one > 0 && length_two > 0 && length_three > 0
      :scalene
    elsif length_one == length_two && length_two == length_three && length_one > 0 && length_two > 0 && length_three > 0
    :equilateral
    end
  end
end

class TriangleError < StandardError
end

binding.pry
