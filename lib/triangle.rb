class Triangle 

attr_accessor :a, :b, :c

def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end
  
  
def kind
  if triangle_positive == true && triangle_inequality == true
        true
      else
        raise TriangleError
      end
      if @a == @b && @b == @c && @a == @c
        :equilateral
      elsif @a != @b && @b != @c && @c != @a
        :scalene 
      else 
        :isosceles
       end 
       
 end
 
 def triangle_inequality
 (@a + @b) > @c && (@b + @c) > @a && (@a + @c) > @b
 end
 
 def triangle_positive
   @a.positive? && @b.positive? && @c.positive?
 end
 
 class TriangleError < StandardError
  
end

end

