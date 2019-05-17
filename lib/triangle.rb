class Triangle

attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [@side_1, @side_2, @side_3].sort
  end

   def kind
    if @sides[0] + @sides[1] > @sides[2] && @sides.none?{|s| s <= 0}
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        :equilateral
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
        :isosceles
      else
        :scalene
      end
    else
      raise Triangle::TriangleError
    end
  end

   class TriangleError < StandardError
  end
end
