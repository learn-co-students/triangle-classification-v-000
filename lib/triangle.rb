class Triangle
  attr_accessor :a, :b, :c, :triangle
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if (a <= 0 || b <= 0 || c <= 0) || ((a + b) <= c || (b + c) <= a || (a + c) <= b)
      begin
        raise TriangleError
      #rescue TriangleError => error 
        #puts error.message
      end
    elsif a == b && b == c 
      :equilateral
    elsif (a == b && b != c) || (a == c && c != b) || (c == b && b != a)
      :isosceles
    else
      a != b && b != c && a != c
      :scalene
    end
  end
    
  class TriangleError < StandardError
    #def message 
      #puts "This is not a valid triangle."
    #end
  end
end
