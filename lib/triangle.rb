class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
  end

  def valid?
    result = [@a, @b, @c].all? {|side| side > 0}
    result && (@a+@b > @c) && (@a+@c > @b) && (@b+@c > @a)
  end

  def kind
    if !valid?
      raise TriangleError
    elsif @a==@b && @b==@c
      result = :equilateral
    elsif @a==@b || @a==@c || @b==@c
      result = :isosceles
    else
      result = :scalene
    end
    result
  end

end

class TriangleError < StandardError
end