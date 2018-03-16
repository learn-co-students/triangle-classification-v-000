class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    sides = [@side_one, @side_two, @side_three]
    sides.sort!
    if sides.include?(0)
      begin
        raise TriangleError
      end
    elsif sides.select {|n| n < 0 }.count > 0
      begin
        raise TriangleError
      end
    elsif sides[0] + sides[1] <= sides[2]
      begin
        raise TriangleError
      end
    else
      if sides.uniq.size == 1
        :equilateral
      elsif sides.uniq.size == 2
        :isosceles
      elsif sides.uniq.size == 3
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def mes
    "Triangle Error"
  end
end
