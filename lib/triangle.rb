class Triangle
 attr_accessor :a, :b, :c
 
 
 
 
 def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
 end

 def kind 
  valid_triangle?
  if a==b && b==c 
    :equilateral
  elsif a==b || b==c || c==a 
    :isosceles 
  else 
    :scalene 
  end
 end 
 
 def valid_triangle?
   triangle = [(a+b>c), (b+c>a), (c+a>b)] 
   [a,b,c].each {|x| triangle << false if x <= 0} 
    raise TriangleError if triangle.include?(false)
 end 
 
 class TriangleError < StandardError 
 end 
end
  
 

