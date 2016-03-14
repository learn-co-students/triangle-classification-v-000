class Triangle
  def initialize(a,b,c)
    @a, @b, @c = a, b, c
  end

  def kind
    unless valid?
      raise TriangleError
    else
      if scalene?
        :scalene
      elsif equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      end
    end 
  end

  def scalene?
    @a != @b && @a != @c && @b != @c
  end

  def equilateral?
    @a == @b && @a == @c
  end

  def isosceles?
    @a == @b || @a == @c || @b == @c
  end

  def valid?
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end
end

class TriangleError < StandardError
  def message
    "Your triangle is invlaid!"
  end
end