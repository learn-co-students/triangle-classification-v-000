require 'pry'
class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    # Check for triangle inequality
    fail_inequality = (@length_one + @length_two <= @length_three) || (@length_one + @length_three <= @length_two)  || (@length_two + @length_three <= @length_one)

    # Check for each side to be greater than 0
    greater_than_zero = (@length_one > 0) && (@length_two > 0) && (@length_three > 0)

    # Create an array that contains true or false based on whether or not two sides are equal to each other and keep count
    equal_length_count = 0
    array = []
    array << (@length_one == @length_two)
    array << (@length_two == @length_three)
    array << (@length_one == @length_three)
    array.each do |condition|
      if condition == true
        # increment only if true
        equal_length_count += 1
      end
    end

    # First check for valid triangle, if pass, check to see what type of triangle
    if fail_inequality == true || greater_than_zero == false
      raise TriangleError
    else
      case equal_length_count
        # = 0 means no equal sides
      when 0
        :scalene
        # = 1 means two sides equal
      when 1
        :isosceles
        # = 3 means all sides equal
      when 3
        :equilateral
      end
    end
  end

  class TriangleError < StandardError

  end
end
