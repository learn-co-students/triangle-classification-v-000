class Triangle

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 || (@s1 + @s2) <= @s3 || @s1 + @s3 <= @s2 || @s2 + @s3 <= @s1
        raise TriangleError
      end

    if @s1 == @s2 && @s2 == @s3
      return :equilateral

    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      return :isosceles

    elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3
      return :scalene

    end

  end

end

class TriangleError < StandardError
   def message
     "Recheck the lengths of your sides. Side length cannot be less than or equal to 0.  Also, the sum of the length of any two sides must be greater than the length of the remaining side."
   end

end
