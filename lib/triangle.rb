require 'pry'
class Triangle

def initialize(a,b,c)
  @a=a
  @b=b
  @c=c
end

def kind
  valid_triangle?
if @a==@b && @b==@c && @a>0
 return :equilateral
elsif (@a==@b || @a==@c || @b==@c) && (@a>0 && @b>0)
 return :isosceles
elsif @a!=@b && @a!=@c && @c!=@b
 return :scalene
else
  raise TriangleError
end

end

def valid_triangle?
  if @a<0 || @b<0 || @c<0 
  raise TriangleError
  elsif @a>=@b+@c || @b>=@a+@c || @c>=@a+@b
    raise TriangleError
  end
end

end

class TriangleError < StandardError

end