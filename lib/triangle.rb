require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :sides

  def initialize (side_1, side_2, side_3)
    @sides = []
    @sides << [side_1, side_2, side_3]
    @sides = @sides.flatten
  end

  def kind
    side_sums = [@sides[0]+@sides[1], @sides[0]+@sides[2], @sides[1]+@sides[2]].reverse
    invalid = nil
    invalid = true if (@sides[0] >= side_sums[0] || @sides[1] >= side_sums[1] || @sides[2] >= side_sums[2])
      if invalid || (@sides.any? {|side| side <= 0}) # invalid cases.
        puts "cow"
        begin
          raise TriangleError
        end
      else
        return :equilateral if @sides.uniq.length == 1
        return :isosceles if @sides.uniq.length == 2
        return :scalene if @sides.uniq.length == 3
      end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle!"
    end
  end

end
