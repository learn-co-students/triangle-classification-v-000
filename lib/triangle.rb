class Triangle

  attr_accessor :a, :b, :c 

  def initialize(a, b, c)
    if !valid?(a, b, c)
      raise TriangleError 
    else 
      @a = a 
      @b = b 
      @c = c 
    end
  end
  
  def valid?(a, b, c)
    a + b > c && c + b > a && a + c > b && a > 0 && b > 0 && c > 0
  end
  
  def kind
      if self.a == self.b && self.a == self.c && self.b == self.c
        kind = :equilateral
      elsif self.a != self.b && self.a != self.c && self.b != self.c
        kind = :scalene
      else 
        kind = :isosceles
      end
    kind 
  end

  class TriangleError < StandardError
    
    def message
      "the triangle is invalid"
    end
    
  end

end  
