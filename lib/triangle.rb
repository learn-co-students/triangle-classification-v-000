require 'pry'

class Triangle
  attr_accessor :type, :side1, :side2, :side3

  def initialize(s1, s2, s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
    @sides = [@side1, @side2, @side3].sort
  end

  def categorize

        if @sides.any? { |s| s < 0  } || @sides.all? { |s| s == 0 } || @sides[0] + @sides[1] <= @sides[2]
          begin
            raise TriangleError
          end
        elsif @sides.combination(3).any? { |a,b,c| a == b && b == c && c == a }
          @type = :equilateral
        elsif @sides.combination(2).any? {|a,b| a == b}
          @type = :isosceles
        else
          @type = :scalene
        end

  end

  def kind
    categorize
    @type
  end

  class TriangleError < StandardError
      def message
        "This triangle is not vaid!"
      end
  end


end
