class TriangleError < StandardError
  def message
    "A triangle must have positive lengths for all of its sides and none of the side lengths can be greater than or equal to the sum of the lengths of the other two sides."
  end
end

class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0 || @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      raise TriangleError
      # the following code would allow for code to continue running and the printing of an error message.  (But doesn't pass the lesson's tests)
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end
  
  def kind
    if @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      :isosceles
    else
      :scalene
    end
  end
  
  
  
end