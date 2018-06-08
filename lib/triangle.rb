require 'pry'
class Triangle
  # write code here
  def initialize(one,two,three)
    @sides = []
    @sides << one
    @sides <<two
    @sides <<three
  end

  def sides
    @sides
  end

  def kind

    self.sides.each do
      |side| if side < 0
        raise TriangleError
      end
    end

      sum = self.sides.combination(2).to_a.map do
        |a,b| a+b
      end

      if sum[0] <=self.sides[2]
        raise TriangleError
      end
      if sum[1] <=self.sides[1]
        raise TriangleError
      end
      if sum[2] <=self.sides[0]
        raise TriangleError
      end

      self.sides.combination(3).to_a.each do
          |a,b,c|
          if a ==b && b==c
            return :equilateral
          elsif a ==b
            return :isosceles
          elsif  b==c
            return :isosceles
          elsif a==c
            return :isosceles
          else
            return :scalene
          end
        end
      end





  class TriangleError < StandardError
  end

end
