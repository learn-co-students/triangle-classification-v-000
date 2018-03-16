class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if valid?
      if is_equilateral?
        return :equilateral
      elsif is_isosceles?
        return :isosceles
      elsif is_scalene?
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def triangle_inequality?
    a + b > c && b + c > a && a + c > b
  end

  def valid?
    [a, b, c].all? { |s| s > 0} && self.triangle_inequality?
  end

  def is_equilateral?
    a == b && a == c
  end

  def is_isosceles?
    (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  end

  def is_scalene?
    a != b && a != c && b != c
  end


end #class Triangle


class TriangleError < StandardError


end
