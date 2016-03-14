class Triangle
  def initialize(a,b,c)
    @a, @b, @c = a, b, c
  end

  def kind
    if not_valid?
      raise TriangleError
    else
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      else
        :scalene
      end
    end 
  end
  
  def equilateral?
    @a == @b && @a == @c
  end

  def isosceles?
    @a == @b || @a == @c || @b == @c
  end

  def not_valid?
    !(@a + @b > @c && @a + @c > @b && @b + @c > @a)
  end
end

class TriangleError < StandardError
  def message
    "Your triangle is invlaid!"
  end
end