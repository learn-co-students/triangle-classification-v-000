require 'pry'

class Triangle
  attr_accessor :sideOne, :sideTwo, :sideThree

  def initialize(sideOne, sideTwo, sideThree)
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
  end

  def inequality
    ( (@sideOne + @sideTwo <= @sideThree) || (@sideOne + @sideThree <= @sideTwo) || (@sideTwo + @sideThree <= @sideOne) ? true : false )
  end

  def kind
    if @sideOne <= 0 || @sideTwo <= 0 || @sideThree <= 0 || inequality #method from above
      raise TriangleError
    elsif @sideOne == @sideTwo && @sideTwo == @sideThree
      :equilateral
    elsif @sideOne == @sideTwo || @sideOne == @sideThree || @sideTwo == @sideThree
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

  def message
    "That is not a valid triangle."
  end
end