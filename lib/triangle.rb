class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @sides = [a,b,c]
  end

  def kind
    if real_triangle?
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  def real_triangle?
    sides_sum = @sides.reduce(:+)
    if @sides.any?{|side| side <= 0} || @sides.any?{|side| (sides_sum-side) <= side}
      false
    else
      true
    end
  end

end

class TriangleError < StandardError

end
