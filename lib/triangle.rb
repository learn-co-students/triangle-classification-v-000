class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle?
  (@a+@b > @c) && (@b+@c > @a) && (@a+@c > @b) && @a>0 && @b>0 && @c>0
  end

  def kind
    if self.valid_triangle? != true
      raise TriangleError
    elsif
      @a==@b && @b==@c
        :equilateral
    elsif
      (@a==@b && @b!=@c) || (@b==@c && @a!=@c) || (@c==@a && @c!=@b)
        :isosceles
    elsif
      self.valid_triangle? == true && (@a!=@b) && (@b!=@c) && (@c!=@a)
        :scalene
    end
  end

    class TriangleError < StandardError
    end

end
