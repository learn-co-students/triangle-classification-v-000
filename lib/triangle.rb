class Triangle
  # write code here
  attr_accessor :a, :b, :c, :kind

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

   def kind
  if a == b && a == c              
   @kind = :equilateral
     if (a <= 0) || (b <= 0) || (c <= 0)
     raise TriangleError
     elsif (a+b <= c) || (a+c <= b) || (b+c <= a)
     raise TriangleError
     end
  elsif a == b || a == c || b == c 
   @kind = :isosceles
    if (a <= 0) || (b <= 0) || (c <= 0)
     raise TriangleError
     elsif (a+b <= c) || (a+c <= b) || (b+c <= a)
     raise TriangleError
     end
   elsif (a <= 0) || (b <= 0) || (c <= 0)
     raise TriangleError
    elsif (a+b <= c) || (a+c <= b) || (b+c <= a)
     raise TriangleError  
  else
    @kind = :scalene                      
  end
  @kind
end



 
end

class TriangleError < StandardError
 # triangle error code
end