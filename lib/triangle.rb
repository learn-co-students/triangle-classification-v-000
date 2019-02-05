class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @all_sides = []
    @all_sides << side_1
    @all_sides << side_2
    @all_sides << side_3

  end

  def kind
    if @all_sides.uniq.count <= 1
      :equilateral
    elsif @all_sides.uniq.count <= 2
      :isosceles
    elsif @all_sides.map {|side| side > 0}
      :scalene
    elsif @all_sides.none?
      raise TriangleError
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
