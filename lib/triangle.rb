class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
   @a = a
   @b = b
   @c = c
  end


  def kind
    if not_valid?
      raise TriangleError
    
    elsif @a == @b && @b == @c
      :equilateral
    elsif (@a == @b) || (@a == @c) || (@b == @c)
      :isosceles
    else
      :scalene
    end
  end


  def not_valid?
    [a,b,c].min <= 0 || (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a)
  end

end


class TriangleError < StandardError

end
