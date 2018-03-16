class Triangle
  attr_accessor :a, :b, :C
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    if a + b <= c || a + c <= b || b + c <= a
      begin
        raise TriangleError
      end
    elsif a <= 0 || b <= 0 || c <= 0
      begin
        raise TriangleError
      end
    end
  end

  def kind
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

end
