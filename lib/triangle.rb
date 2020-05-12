class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c].sort
  end

  def kind

    if @sides.any? {|x| x <= 0}
      raise TriangleError
    end

    if @sides[0] + @sides[1] <= @sides[2] ||@sides[0] + @sides[2] <= @sides[1] ||@sides[1] + @sides[2] <= @sides[0]
      raise TriangleError, "Not valid triangle lengths"
    end

    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  puts "TriangleError"
end
