class Triangle
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
    kind
  end
  def kind
  if @a+@b<=@c||@a+@c<=@b||@c+@b<=@a
    raise TriangleError
  elsif @a<=0||@b<=0||@c<=0
    raise TriangleError
  else
    if @a==@b&&@b==@c
      type= :equilateral
      elsif @a==@b||@b==@c||@a==@c
      type = :isosceles
    else
      type = :scalene
    end
  end
  return type
  end
  class TriangleError < StandardError
  puts "this is not a valid triangle!"  
  end
end
