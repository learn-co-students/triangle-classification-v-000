class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides << @side_1
    @sides << @side_2
    @sides << @side_3
  end

  def kind
    if self.inequality? || self.negative_or_0?
         begin
           raise TriangleError
         end
       elsif  @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
         return :scalene
       elsif @side_1 == @side_2 && @side_2 == @side_3
         return :equilateral
       else
         return :isosceles
       end
  end

  def negative_or_0?
    @sides.detect {|side| side < 0.1} == nil ? false : true
  end

  def inequality?
     @side_1 + @side_2 <=  @side_3 ||  @side_2 + @side_3 <=  @side_1 ||  @side_3 + @side_1 <=  @side_2 ? true : false
  end

end

class TriangleError < StandardError

end
