require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side1 + self.side3 <= self.side2 || self.side1 < 0 || self.side2 < 0 || self.side3 < 0
      begin
        raise TriangleError
      end
    else
        if self.side1 == self.side2 && self.side1 == self.side3 && self.side2 == self.side3
          return :equilateral
        elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side3 == self.side1
          return :isosceles
        else
          return :scalene
        end
    end
  end
end

class TriangleError < StandardError
    def message
      "Error! You must enter a valid side for the triangle."
    end
end



