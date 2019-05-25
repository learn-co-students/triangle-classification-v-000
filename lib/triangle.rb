class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    validate_triangle
    if side_one == side_two && side_one == side_three && side_two && side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_triange = [(side_one + side_two > side_three),
                     (side_one + side_three > side_two),
                     (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each { |side| valid_triange << false if side <= 0}
    raise TriangleError if valid_triange.include?(false)
  end

  class TriangleError < StandardError
  end

end
