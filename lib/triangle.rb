class Triangle
  def initialize(a,b,c)
    @a = a 
    @b = b
    @c = c
    @sides = [a, b, c]
  end 
  
  def kind 
    if @sides.detect{|side| side <= 0} 
      raise TriangleError
    elsif @sides.length < 3 
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a 
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral 
    elsif @sides.uniq.length == 2 
      :isosceles 
    else 
      :scalene 
    end 
  end 
end 

class TriangleError < 
  StandardError
  def initialize 
  end 
  def message  
    puts "wrong"
  end 
end 
