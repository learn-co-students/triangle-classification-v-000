class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(side_a,side_b,side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def valid?
    (@a>0 && @b>0 && @c>0) && (@a+@b>@c && @b+@c>@a && @c+@a>@b)
  end

  def kind
    if self.valid?
      if @a==@b && @b==@c
        :equilateral
      elsif @a==@b || @b==@c || @c==@a
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end


class TriangleError < StandardError
end
