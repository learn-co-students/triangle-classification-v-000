class Triangle
  attr_reader :side_1, :side_2, :side_3, :type

  @@all = []

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @@all << self
  end

  def kind
    if side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1 || side_1 <= 0 || side_2 <= 0 || side_3 <= 0
        raise TriangleError
    else
      if side_1 != side_2 && side_2 != side_3 && side_3 != side_1
        @type = :scalene
      elsif side_1 == side_2 && side_2 == side_3
        @type = :equilateral
      else
        @type = :isosceles
      end
    end
  end

  class TriangleError < StandardError
    def message
      "This triangle is not a triangle!!! Check the side lengths and try again"
    end
  end

end
