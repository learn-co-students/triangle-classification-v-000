class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    array = [a, b, c].sort
    @a = array[0]
    @b = array[1]
    @c = array[2]
  end

  def kind
    if @a <= 0 || @a + @b <= @c
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral 
    elsif @a == @b && @b != @c || @a != @b && @b == @c
      :isosceles
    else :scalene
    end
  end  
end

class TriangleError < StandardError
end