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

    if is_triangle?
      case
      when equilateral?
        :equilateral
      when scalene?
        :scalene
      else
        :isosceles
      end
    else
    raise TriangleError
    end

  end


  def equilateral?
    @a_side == @b_side && @a_side == @c_side && @b_side == @c_side #if all sides are even, returns true
  end

  def scalene?
    @a_side != @b_side && @a_side != @c_side && @b_side != @c_side #if all sides are unequal, returns true
  end

  def is_triangle?
    a_b_sum = @a_side + @b_side
    a_c_sum = @a_side + @c_side
    b_c_sum = @b_side + @c_side

    a_b_sum > @c_side && a_c_sum > @b_side && b_c_sum > @a_side #returns true if triangle is legal
  end

end

class TriangleError < StandardError

end
