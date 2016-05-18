class Triangle
  # write code here

  attr_reader :side_one, :side_two, :side_tree

  def initialize(side_one, side_two, side_tree)
    @side_one = side_one
    @side_two = side_two
    @side_tree = side_tree
  end

  def valid_triangle?
    ((@side_one > 0) && (@side_two > 0) && (@side_tree > 0)) && ((@side_one + side_two) > side_tree) && ((@side_one + @side_tree) > side_two) && ((side_two + side_tree) > side_one)
  end

  def kind
    if !(valid_triangle?)
        raise TriangleError
    elsif @side_one == @side_two && @side_one == @side_tree
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_tree || @side_two == @side_tree
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
