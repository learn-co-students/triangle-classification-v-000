require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a_side = a
    @b_side = b
    @c_side = c

    total_sum = @a_side + @b_side + @c_side
    raise TriangleError if total_sum <= 0
  end

  def kind
    a_b_sum = @a_side + @b_side
    a_c_sum = @a_side + @c_side
    b_c_sum = @b_side + @c_side

    if a_b_sum > @c_side && a_c_sum > @b_side && b_c_sum > @a_side
      case
      when @a_side == @b_side && @a_side == @c_side && @b_side == @c_side
        :equilateral
      when @a_side != @b_side && @a_side != @c_side && @b_side != @c_side
        :scalene
      else
        :isosceles
      end
    else
    raise TriangleError
    end

  end

end

class TriangleError < StandardError

end
