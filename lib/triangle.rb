class Triangle
  # write code here
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a= a
    @b= b
    @c= c
   end

  def kind

      if (@a == 0 || @b == 0 || @c == 0)
        #errorhandler
        begin
             raise TriangleError
        end
          #errorhandler

      end
       if (@a+@b<=@c || @a+@c<=@b || @b+@c<=@a)
         begin
              raise TriangleError
         end
       end
            if (@a == @b &&  @b == @c)
              return :equilateral
            elsif (@a == @b || @b == @c || @a == @c)
                  return :isosceles
            else
                  return   :scalene
            end

    end

    class TriangleError < StandardError
    end
end
