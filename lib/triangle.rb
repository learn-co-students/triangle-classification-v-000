class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a >= 0 && @b >=0 && @c >=0 && @a + @b > @c && @a + @c > @b && @c + @b > @a
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      elsif @a != @b && @b!= @c && @a != @c
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

end


class TriangleError < StandardError
 # triangle error code
end
