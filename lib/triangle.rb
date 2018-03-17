class Triangle
  attr_accessor :a,:b,:c
  # write code here
  def initialize(a,b,c)
     @a,@b,@c=a,b,c
     @arr=[a,b,c].sort
  end
  def kind

   if @arr.any?(&:negative?)|| @arr[0]+@arr[1]<=@arr[2]
     raise TriangleError
    end

    if a == b && b == c
        :equilateral
     elsif a == b || a == c || b == c
       :isosceles
     else
       :scalene
     end

end
end

class TriangleError < StandardError
 # triangle error code
end
