class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == 0 && @b == 0 && @c == 0
      raise TriangleError
    elsif @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    #The sum of the lengths of any two sides of a triangle always exceeds the length
    #of the third side. This is a principle known as the triangle inequality.
    elsif (@a + @b) <= @c || (@b + @c) <= @a || (@a + @c) <= @b
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @c && @a != @b && @c != @b
      :isosceles
    elsif @a != @b && @b == @c && @c != @a
      :isosceles
    elsif @a == @b && @b != @c && @c != @a
      :isosceles
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    end
  end
  
end


  class TriangleError < StandardError
    #def message
    #   "This triangle is illegal, each side needs to have a length"
    #end
  end
