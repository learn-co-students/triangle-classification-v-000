class Triangle
  # write code here


  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    raise TriangleError if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
    raise TriangleError if (@length1 + @length2) <= @length3 || (@length2 + @length3) <= @length1 || (@length3 + @length1) <= @length2

    if @length1 == @length2 && @length2 == @length3
      return :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      return :isosceles
    elsif @length1 != @length2 && @length2 != @length3
      return :scalene


    end
  end
end


class TriangleError < StandardError
 # triangle error code
end
