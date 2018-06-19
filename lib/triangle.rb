class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a # side 1
    @b = b # side 2
    @c = c # side 3
  end

  def kind

      if @a + @b + @c == 0
        raise TriangleError
      elsif @a < 0 || @b < 0 || @c < 0
        raise TriangleError
      elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
        raise TriangleError
      elsif @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      elsif @a != @b && @b != @c && @a != @c
        :scalene

    end
  end

    class TriangleError < StandardError
      puts "This violates the triangle equality principle."
    end
end
