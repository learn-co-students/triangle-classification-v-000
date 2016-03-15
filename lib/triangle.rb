class Triangle
  attr_accessor :triangles, :equilateral, :isosceles, :scalene, :side1, :side2, :side3, :sides #:type,

  def initialize(side1, side2, side3)
#     sides = {side1:, side2:, side3:}
     @type = type
     @side1 = side1
     @side2 = side2
     @side3 = side3
#     sides.each {|k, v| v > 0}
#     (side1 + side2) > side3
#     (side2 + side3) > side1
#     (side1 + side3) > side2
  end

#   def triangles

#   end

#   def type
#     @type
#   end

  def kind
   
    if side1 == side2 == side3
      #self = equilateral
      :quilateral
    elsif
      side1 == side2 and side1 !== side3
     # self = isosceles
      :isosceles
    else
      #self = scalene
      :scalene
    end
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
  def message
    puts "Not a legal triangle"
  end
end