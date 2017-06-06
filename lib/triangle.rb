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
    # if (@a < 0 || @b < 0 || @c < 0) || (@a == 0 || @b == 0 || @c == 0) || ((@a + @b) < @c || (@a + @c) < @b || (@a + @c) < @b)
      
    if @a == @b && @a == @c && @b == @c  
      @type = :equilateral
    elsif (@a == @b || @a == @c || @b == @c) 
      @type = :isosceles
    elsif @a != @b && @a != @c && @b != @c 
      @type = :scalene 
    elsif ((@a + @b) < @c || (@a + @c) < @b || (@a + @c) < @b) 
      begin
        raise TriangleError
      end
    end 
  end
end

class TriangleError < StandardError
  def message 
        "That's an illegal triangle."
  end 
end