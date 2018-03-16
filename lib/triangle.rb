class Triangle
  attr_accessor :side_one, :side_two, :side_three, :sides

  def initialize(one, two, three)
    @side_one = one
    @side_two = two
    @side_three = three
    @sides = []
    @sides << one
    @sides << two
    @sides << three
  end

  def kind
    @sides.sort!
    if (@sides[0] + @sides[1] > @sides[2] && @sides.all?(&:positive?)) #valid triangle, proceed
      if @sides[0] == @sides [2]
        :equilateral
      elsif @sides.combination(2).any? {|a,b| a==b}
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "That's not a valid triangle!"
  end
end
