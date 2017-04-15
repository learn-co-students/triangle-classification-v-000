class Triangle
  attr_accessor :name

  def initialize(side_a, side_b, side_c)
    @name = name
  end

  def kind
    :equilateral
    :isosceles
    :scalene
  end

end
