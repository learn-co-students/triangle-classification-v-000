class Triangle

  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @s1_s2 = @s1 + @s2
    @s1_s3 = @s1 + @s3
    @s2_s3 = @s2 + @s3
  end

  def valid_triangle?
    if @s1 > 0 && @s2 > 0 && @s3 > 0 &&
      @s1 + @s2 > @s3 &&
      @s2 + @s3 > @s1 &&
      @s3 + @s1 > @s2
      true
    end
  end

  def kind
    if valid_triangle?
      if @s1_s2 == @s2_s3 and @s1_s3 == @s2_s3
        :equilateral
      elsif @s1 == @s3 or @s3 == @s2 or @s1 == @s2
        :isosceles
      elsif @s1_s2 != @s1_s3 and @s1_s2 != @s2_s3
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end
end


class TriangleError < StandardError
   def message 
    "This is not a triangle! Please check your side lengths."
  end
end