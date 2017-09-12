class TriangleError < StandardError
  def message
    "This is not an triangle!"
  end
end

class Triangle < TriangleError
  # write code here
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    @sides = []
    @sides << side1 << side2 << side3
  end

  def kind
    if valid? && inequality?
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      elsif scalene?
        :scalene
      end

    else
      raise TriangleError
    end

  end

  def valid?
    self.sides.all? {|side| side > 0}
    #self.side1 > 0 && self.side2 > 0 && side.side3
  end

  def equilateral?
    self.side1 == self.side2 && self.side2 == self.side3
  end

  def isosceles?
    self.sides.any? { |side| self.sides.drop(sides.find_index(side)+1).include?(side)  }
  end

  def scalene?
    self.sides.none? { |side| self.sides.drop(sides.find_index(side)+1).include?(side)  }
  end

  def inequality?
    self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2
  end

  def sides
    @sides
  end

end
