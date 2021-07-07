class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
  end

  def valid?
    return [@a, @b, @c].all? {|side| side > 0} && (@a+@b > @c) && (@a+@c > @b) && (@b+@c > @a)
  end

  def kind
    if !valid?
      raise TriangleError
    elsif @a==@b && @b==@c
      return :equilateral
    elsif @a==@b || @a==@c || @b==@c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
