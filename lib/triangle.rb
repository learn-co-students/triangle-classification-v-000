class Triangle
  attr_accessor :lenght1, :lenght2, :lenght3
  
  def initialize(lenght1, lenght2, lenght3)
    @lenght1 = lenght1
    @lenght2 = lenght2
    @lenght3 = lenght3
  end
  
  def kind 
    if lenght1 <= 0 || lenght2 <= 0 || lenght3 <= 0
      raise TriangleError 
    elsif (lenght1 + lenght2 <= lenght3) || (lenght1 + lenght3 <= lenght2) || (lenght2 + lenght3 <= lenght1)
      raise TriangleError
    elsif lenght1 == lenght2 && lenght2 == lenght3 
      return :equilateral 
    elsif lenght1 != lenght2 && lenght2 == lenght3 || lenght1 != lenght2 && lenght1 == lenght3 || lenght1 != lenght3 && lenght1 == lenght2
      return :isosceles 
    elsif lenght1 != lenght2 && lenght1 != lenght3 && lenght2 != lenght3 
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
