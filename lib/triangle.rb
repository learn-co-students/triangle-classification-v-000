class Triangle
  # write code here
  attr_accessor :a, :b, :c

    def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    end


  def kind
    raise TriangleError if @a <= 0 || @b <= 0 || @c <= 0
    raise TriangleError if @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
        if @a == @b && @b == @c
          :equilateral
        elsif @a == @b || @b == @c ||@c == @a
          :isosceles
        else
          :scalene

      end
    end
  end

    class TriangleError < StandardError
     # triangle error code"
     "illegal triangle"
    end
