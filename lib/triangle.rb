require 'pry'
class Triangle
  # write code here
  attr_accessor :first, :second, :third

  def initialize(first, second, third)

  @first = first
  @second = second
  @third = third
  @sides = [@first, @second, @third].sort

  end

  def kind
    if @sides.any? { |side| side <= 0  } || @sides[0] + @sides[1] <= @sides[2]

        raise TriangleError

    elsif @first == @second && @second == @third
      #  binding.pry
      :equilateral

    elsif @first == @second || @second == @third || @first == @third
      # binding.pry

      :isosceles

    else
      :scalene

    end

  end
  end

  class TriangleError < StandardError
    def message
    "This is not a valid Traiangle!."
    end
  end
