class Triangle

  attr_accessor :side1, :side2, :side3, :allsides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @allsides = [side1, side2, side3]
  end

  def illegal
    allsides.any? { |s| s <= 0 } || (allsides.sort[0] + allsides.sort[1] <= allsides.sort[2])
  end

  def kind
    if illegal
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This triangle is invalid"
    end
  end

end
