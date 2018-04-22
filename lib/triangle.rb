require 'pry'

class Triangle
  # write code here
  attr_accessor

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def greater_than_zero
    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0
      true
    else
      false
    end
  end

  def triangle_inequality
    sum_of_side_1_and_2 = @side_1 + @side_2
    sum_of_side_1_and_3 = @side_1 + @side_3
    sum_of_side_2_and_3 = @side_2 + @side_3

    if sum_of_side_1_and_2 <= @side_3 || sum_of_side_1_and_3 <= @side_2 || sum_of_side_2_and_3 <= @side_1
      false
    else
      true
    end
  end

  def kind
    sum_of_side_1_and_2 = @side_1 + @side_2
    sum_of_side_1_and_3 = @side_1 + @side_3
    sum_of_side_2_and_3 = @side_2 + @side_3

    if greater_than_zero == false
      begin
        raise TriangleError
      end
    elsif triangle_inequality == false
      begin
        raise TriangleError
      end
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    elsif @side_1 == @side_2 && @side_2 != @side_3
      :isosceles
    elsif @side_2 == @side_3 && @side_1 != @side_2
      :isosceles
    elsif @side_1 == @side_3 && @side_3 != @side_2
      :isosceles
    end
  end

  class TriangleError < StandardError
    def greater_than_zero_message
      "Each side must be greater than zero."
    end

    def triangle_inequality_message
      "The sum of the lengths of any two sides of a triangle must always exceed the length of the third side."
    end
  end
end
