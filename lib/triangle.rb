class Triangle
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if valid_triangle?
      equilateral?
    end
  end

  def equilateral?
    if @s1 == @s2 && @s1 == @s3
      :equilateral
    else
      self.isosceles?
    end
  end

  def isosceles?
    if @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      :isosceles
    else
      self.scalene?
    end
  end

  def scalene?
    if @s1 != @s2 && @s2 != @s3 && @s1 != @s3
      :scalene
    end
  end

  def valid_triangle?
    if sides_greater_than_zero? && valid_side_lengths?
      true
    else
      raise TriangleError
    end
  end

  def valid_side_lengths?
    if @s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2 
      true
    end
  end

  def sides_greater_than_zero?
    if @s1 > 0 && @s2 > 0 && @s3 > 0
      true
    end
  end
end

class TriangleError < StandardError
 # triangle error code
 def message
   "Your Triangle is not valid. Please check the side lengths."
 end
end