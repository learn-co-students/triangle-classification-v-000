class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @all_sides = []
    @all_sides << side_1
    @all_sides << side_2
    @all_sides << side_3

  end

  def kind
    if @all_sides.detect {|side| side <= 0} || @all_sides[0] + @all_sides[1] < @all_sides[2] || @all_sides[0] + @all_sides[2] == @all_sides[1] || @all_sides[0] > @all_sides[1] + @all_sides[2]
      raise TriangleError
    elsif @all_sides.uniq.count == 1
      :equilateral
    elsif @all_sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
