class Triangle
  attr_accessor :a,:b, :c, :isosceles, :equilateral, :scalene
  class TriangleError < StandardError
  end
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end
  def kind
    if !(@a > 0 && @b >0 && @c >0 && @a+@b >@c && @a+@c >@b && @b+@c > @a)
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b && @b != @c
      :isosceles
    elsif @b == @c
      :isosceles
    elsif @a == @c
      :isosceles
    else
      :scalene
    end
  end

  end
