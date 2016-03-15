class Triangle
  attr_accessor :triangles, :type, :equilateral, :isosceles, :scalene, :side1, :side2, :side3, sides

  def initialize(side3)
    sides = {side1:, side2:, side3}
    (side1 + side2) > side3
    (side2 + side3) > side1
    (side1 + side3) > side2
    @type = type
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangles

  end

  def type
    @type
  end

  def kind
    @kind
  end
end #Triangle class

  class Equilateral < Triangle
    def equilateral
    side1 == side2 == side3
    end
  end

  class Isosceles < Triangle
    def isosceles
    side1 == side2 and side1 !== side3
    end
  end

  class Scalene < Triangle
    def scalene
      side1 != side2 != side3
    end
  end


class TriangleError < StandardError
 # triangle error code
end