class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0
      raise TriangleError
    elsif self.side_1 + self.side_2 <= self.side_3 || self.side_2 + self.side_3 <= self.side_1 || self.side_1 + self.side_3 <= self.side_2
      raise TriangleError
    else
      if self.side_1 == self.side_2 && self.side_1 == self.side_3
        :equilateral
      elsif self.side_1 == self.side_2 || self.side_2 == self.side_3 || self.side_3 == self.side_1
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  "triangle error!"
end

#EXAMPLES

# tortilla_chip = Triangle.new(3,3,3)
# puts "I'm an #{tortilla_chip.kind} triangle!"
# # I'm an equilateral triangle!
#
# pizza = Triangle.new(8,8,5)
# puts "I'm an #{pizza.kind} triangle!"
# # I'm an isosceles triangle!
#
# clock = Triangle.new(0,0,0)
# puts "I'm a #{clock.kind} triangle"
# #lib/triangle.rb:12:in `kind': TriangleError (TriangleError)
