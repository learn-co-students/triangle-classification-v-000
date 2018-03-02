require 'pry'

class Triangle
  # write code here

  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  def valid?
   sum_one_two = @first_side + @second_side
   sum_one_three = @first_side + @third_side
   sum_two_three = @second_side + @third_side

   if sum_one_two > @third_side && sum_one_three > @second_side && sum_two_three > @first_side
     return true
   else
     return false
   end
 end

  def kind
    if !valid?
      raise TriangleError
    elsif @first_side == @second_side && @second_side == @third_side
      return :equilateral
    elsif @first_side == @second_side || @second_side == @third_side || @first_side == @third_side
      return :isosceles
    else :scalene
    end
  end

end

class TriangleError < StandardError

  def message
    "This is not a triangle"
  end

end
