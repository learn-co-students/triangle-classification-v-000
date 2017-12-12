class Triangle
  # write code here
  attr_accessor :x, :y, :z
  attr_reader :type
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def equilateral?
    self.x == self.y && self.y == self.z
  end

  def isosceles?
    self.x == self.y || self.y == self.z || self.x == self.z
  end

  def scalene?
    self.x != self.y && self.y != self.z && self.x != self.z
  end

  def illegal?
    if self.x <= 0 || self.y <= 0 || self.z <= 0 || self.x + self.y <= self.z || self.y + self.z <= self.x || self.x + self.z <= self.y
      true
    end
  end

  def kind
    if illegal?
        raise TriangleError
        puts error.message
    elsif
      equilateral?
      @type = :equilateral
    elsif
      isosceles?
      @type = :isosceles
    elsif
      scalene?
      @type = :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Please enter correct lengths."
  end
end
