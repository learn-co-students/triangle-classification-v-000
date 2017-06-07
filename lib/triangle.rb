class Triangle
  attr_accessor :a, :b, :c
  attr_reader :type 

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
    @type = type
  end

  def kind      
    if @a == @b && @a == @c && @b == @c && !illegal_triangle?
      @type = :equilateral
    elsif (@a == @b || @a == @c || @b == @c) && !illegal_triangle?
      @type = :isosceles
    elsif @a != @b && @a != @c && @b != @c && !illegal_triangle?
      @type = :scalene 
    else 
        raise TriangleError
    end 
  end

  def illegal_triangle?
    if (@a <= 0 || @b <= 0 || @c <= 0) || ((@a + @b) <= @c || (@a + @c) <= @b || (@a + @c) <= @b)
      true 
    end
  end 
  
end

class TriangleError < StandardError
  def message 
        "Yo, that's an illegal triangle."
  end 
end