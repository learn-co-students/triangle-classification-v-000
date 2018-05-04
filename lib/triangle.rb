require 'pry'
class Triangle
  attr_accessor :side_one, :side_two, :side_three, :kind

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @kind = self.kind
  end

  def kind
      if side_one + side_two <= side_three || side_two + side_three <= side_one || side_one + side_three <= side_two || side_one <= 0 || side_two <= 0 || side_three <= 0
        begin
          raise TriangleError
        end
      elsif side_one == side_two && side_one == side_three
        kind = :equilateral
      elsif side_one == side_two || side_one == side_three || side_two == side_three
        kind = :isosceles
      else
        kind = :scalene
      end
      kind
    end

      class TriangleError < StandardError

      end


end
