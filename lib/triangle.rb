require 'pry'
class Triangle

  attr_accessor :side1, :side2, :side3
  #
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    check_triangle
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    elsif side1 != side2 && side2 != side3
      :scalene
    end
  end

  def check_triangle
    if side1 <= 0 || side2 <= 0 || side3 <= 0 ||
      side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    # elsif
    #   raise TriangleError
    end
  end
end


# begin
#   raise TriangleError
# rescue TriangleError => error
#   puts error.message
# end

class TriangleError < StandardError
  # TriangleError
  def initialize(msg="Your triangle is illegal!")
    super
  end
end
