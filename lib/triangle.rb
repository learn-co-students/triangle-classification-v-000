require 'pry'

class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one.to_f
    @side_two = side_two.to_f
    @side_three = side_three.to_f
  end

  def kind

      total = @side_one + @side_two + @side_three

      if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
        raise TriangleError
      elsif @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_three + @side_two <= @side_one
        raise TriangleError
      elsif @side_one == @side_two && @side_one == @side_three && @side_three = @side_two
        :equilateral
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        :isosceles
      else
        :scalene
      end

  end

  class TriangleError < StandardError
    puts

  end




end
