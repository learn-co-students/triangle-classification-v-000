class Triangle
  
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def triangle_type
    if @s1 == @s2 && @s2 == @s3
      :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      :isosceles
    else
      :scalene
    end
  end

  def raise_error
    if @s1 <= 0 ||  @s2 <= 0 ||  @s3 <= 0
      raise TriangleError 
    elsif @s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s1 + @s3 == @s2
      raise TriangleError
    end
  end

  def kind
      triangle_type unless raise_error
  end

end # <-- end class -->

class TriangleError < StandardError
    

end