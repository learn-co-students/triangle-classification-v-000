class Triangle
  attr_accessor :a, :b, :c, :kind
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def is_greater_than_0?
    if @a > 0 && @b > 0 && @c > 0
      return true
    else
      return false
    end
  end
  
  def triangle_inequality?
    if (@a + @b > @c) && (@a + @c > @b) &&  (@b + @c > @a)
      return true
    else
      return false
    end
  end
  
  def is_valid?
    if self.is_greater_than_0? == true && self.triangle_inequality? == true
      return true 
    else
      return false
    end
  end
  
  def equilateral
    if (@a == @b && @b == @c) && self.is_valid? == true
      return true
    end
  end
  
  def isosceles
    if (@a == @b || @b == @c || @a == @c) && self.is_valid? == true
        return true
     
    end
  end
  
  def scalene
    if (@a != @b && @b != @c && @c != @a) && self.is_valid? == true
      return true
    end
  end
  
  def kind 
    if self.equilateral == true
      return :equilateral
    elsif self.isosceles == true
      return :isosceles
    elsif self.scalene == true
      return :scalene
    else
        raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    
  end
end
