require 'pry'
class Triangle

  attr_reader :sides, :size

  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
    @sides = self.sides.sort
    @size = side1+side2+side3
  end

  def kind
    #no size = 0 triangles
    if self.size==0 || (sides.collect {|s| (s<0)? true:false}.include?(true))
      begin
        raise TriangleError
      end
    #must obey fundamental triangle size req's
    elsif (self.sides[0]+self.sides[1])<=(self.sides[2])
      begin
        raise TriangleError
      end
    #classify by equilateral, isosceles, scalene
    elsif (self.sides[0] == self.sides[1])&&(self.sides[1] == self.sides[2])&&(self.sides[0] == self.sides[2])
      :equilateral
    elsif (self.sides[0] == self.sides[1])||(self.sides[1] == self.sides[2])||(self.sides[0] == self.sides[2])
      :isosceles
    elsif (self.sides[0] != self.sides[1])&&(self.sides[1] != self.sides[2])&&(self.sides[0] != self.sides[2])
      :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    "ur triangle is effed up"
  end
end
