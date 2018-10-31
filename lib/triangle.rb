class Triangle
  # write code here
  attr_reader :side_1, :side_2 , :side_3

  def initialize(side_1,side_2 ,side_3 )
    @side_1 = side_1
    @side_2 =side_2
    @side_3 =side_3
  end
    class TriangleError < StandardError
    end

    def kind
      if @side_1 <= 0 || @side_2 <= 0  || @side_3 <= 0 || !(@side_1 + @side_2 > @side_3) || !(@side_1 + @side_3 > @side_2) || !(@side_3 + @side_2 > @side_1)
        raise TriangleError
      else
        if @side_1 == @side_2 && @side_1 == @side_3
          :equilateral
        elsif @side_1 == @side_2 || @side_3 == @side_2 || @side_1 == @side_3
          :isosceles
        elsif @side_1 != @side_2 && @side_1 != @side_3
          :scalene
        end
      end
    end



# haha well youll make a big statement testing things arent 0
# and such and then use that method as a
# if conditional but if this one fails then we run our else raise error

end
