class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a+@b <= @c || @a+@c <= @b || @b+@c <= @a
      begin
        raise TriangleError
      end
    elsif @a == @b && @a == @c
      return :equilateral
    elsif @a==@b || @a==@c || @b==@c
      return :isosceles
    else
      return :scalene
    end

  end
end

class TriangleError < StandardError

end
