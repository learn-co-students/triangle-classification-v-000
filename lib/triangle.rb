class Triangle
  # write code here
 attr_accessor :a, :b, :c
 def initialize(a,b,c)
    @a=a
     @b=b
     @c=c

end

def kind
  if(!valid?(@a,@b,@c))
    raise TriangleError
  end
  if (@a==@b && @a==@c)
     :equilateral
   elsif (@a==@b || @a==@c || @b==@c )
     :isosceles
   else
     :scalene
end
end




 def valid?(a,b,c)
    if(a>0 && b>0 && c>0)
      if (a+b>c && a+c>b && b+c>a)
          true
        end
    end
  end



end

class TriangleError < StandardError
 # triangle error code
end
