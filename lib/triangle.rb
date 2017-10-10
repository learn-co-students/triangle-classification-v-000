class Triangle
  attr_accessor :sides


  def initialize(side1,side2,side3)
    @sides=[]
    if side1<=0 || side2<=0 || side3<=0
        raise TriangleError
    elsif side1+side2<=side3 || side2+side3<=side1 || side1+side3<=side2
        raise TriangleError
    else
      @sides << side1
      @sides << side2
      @sides << side3
    end


  end

  def kind
    if self.sides.uniq.length == 1
      return :equilateral
    elsif self.sides.uniq.length == 2
      return :isosceles
    elsif  self.sides.uniq.length == 3
      return :scalene
    end
  end


end


class TriangleError < StandardError
end
