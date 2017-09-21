class Triangle
  attr_accessor :side_a, :side_b, :side_c, :kind
  # write code here
  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c

    if (@a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a)
      begin
        raise TriangleError
      rescue Triangle => error
        puts error. message
        raise error
      end
    else
      if @a == @b && @b == @c
        self.kind = :equilateral
      elsif @a == @b || @a == @c || @b == @c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "This is an invalid triangle"
  end
end
