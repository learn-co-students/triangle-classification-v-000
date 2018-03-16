class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [@side_one, @side_two, @side_three]
  end

  def kind

    if @sides.any?{|side| side <= 0 || @sides[0]+@sides[1]<=@sides[2] || @sides[1]+@sides[2]<=@sides[0] || @sides[0]+@sides[2]<=@sides[1] }
      begin
        raise TriangleError
      end
    end

    if @sides.uniq.count == 1
      return :equilateral
    elsif @sides.uniq.count == 2
      return :isosceles
    elsif @sides.uniq.count == 3
      return :scalene
    end
  end
end


class TriangleError < StandardError

end