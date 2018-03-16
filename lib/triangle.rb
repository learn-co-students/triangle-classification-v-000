class Triangle
  # write code here
  attr_accessor :a, :b, :c
  
  def initialize (a,b,c)
     @a=a
     @b=b 
     @c=c 
  end
  
  def kind
    if @a+@b<=@c||@a+@c<=@b||@c+@b<=@a||@a==0
            raise TriangleError
            
                
    
    end
    if @a==@b&&@a==@c
        return :equilateral
      elsif @a==@b||@a==@c||@b==@c
        return :isosceles
    else
        return :scalene
    end
      
  end
end

class TriangleError < StandardError
 # triangle error code
end