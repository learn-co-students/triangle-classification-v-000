class Triangle
  # write code here
  attr_accessor :t_side_one, :t_side_two, :t_side_three
  def initialize(t_side_one, t_side_two, t_side_three)
    @t_side_one = t_side_one
    @t_side_two = t_side_two
    @t_side_three = t_side_three
  end
  def kind

    if @t_side_one <= 0 || @t_side_two <= 0 || @t_side_three <= 0
      raise TriangleError
    elsif @t_side_one + @t_side_two <= @t_side_three || @t_side_one + @t_side_three <= @t_side_two || @t_side_three + @t_side_two <= @t_side_one
      raise TriangleError, "Not valid triangle lengths"
    elsif @t_side_one == @t_side_two && @t_side_one == @t_side_three && @t_side_two == @t_side_three
      :equilateral
    elsif @t_side_one == @t_side_two || @t_side_one == @t_side_three || @t_side_two == @t_side_three
      :isosceles
    elsif @t_side_one != @t_side_two || @t_side_one != @t_side_three || @t_side_two != @t_side_three
      :scalene
    end

  end
end
class TriangleError < StandardError
  # triangle error code
  puts "TriangleError"
end
