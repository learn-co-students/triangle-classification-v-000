class Triangle
  # write code here

 def initialize(a,b,c)
   @s1 = a
   @s2 = b
   @s3 = c
 end

  def kind
    if @s1 + @s2 <= @s3 || @s1 + @s3 <= @s2 || @s3 + @s2 <= @s1 || @s1 <= 0 || @s2 <= 0 || @s3 <= 0
      raise TriangleError
      elsif @s1 == @s2 && @s2 == @s3
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        :isosceles
      else
        :scalene
    end
  end



end

class TriangleError < StandardError
end
