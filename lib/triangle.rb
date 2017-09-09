class Triangle
  # write code here
  attr_accessor :lengthAB, :lengthBC, :lengthAC, :sides

  def initialize(lengthAB, lengthBC, lengthAC)
    self.lengthAB = lengthAB
    self.lengthBC = lengthBC
    self.lengthAC = lengthAC
    self.sides = [self.lengthAB, self.lengthBC, self.lengthAC]
  end

  def triangle_inequality
    if self.sides.sort[0] + self.sides.sort[1] > self.sides.sort[2]
      true
    else
      false
    end
  end

  def valid?
    if triangle_inequality && self.sides.all? {|side| side > 0}
      true
    else
      false
    end
  end

  def equilateral?
    if self.sides.uniq.count == 1
      true
    else
      false
    end
  end

  def isosceles?
    if self.sides.uniq.count == 2
      true
    else
      false
    end
  end

  def kind
    if self.valid?
      if self.equilateral?
        :equilateral
      elsif self.isosceles?
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
      #begin
      #  raise TriangleError
      #rescue TriangleError => error
      #    puts error.message
      #end
    end
  end
end

class TriangleError < StandardError
  def message
    "The triangle with the given proportions is invalid! The length of each side must be larger than 0 and the sum of the lengths of two sides should be larger than the third"
  end
end
