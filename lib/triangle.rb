require 'pry'

class Triangle
  attr_accessor :type, :sides

  def initialize(a,b,c)
    self.sides = [a,b,c]
  end

  def kind
    if !self.valid?
        raise TriangleError
    else
      if sides.select {|side| side == sides[0]}.count > 2
        @type = :equilateral
      elsif sides.select {|side| side == sides[0]}.count > 1 || sides.select {|side| side == sides[1]}.count > 1
        @type = :isosceles
      else
        @type = :scalene
      end
    end
  end

  def valid?
    longest = sides.max
    side_combinations = sides.combination(2).to_a
    side_combinations.none? {|combo| combo.reduce(:+) < longest || combo.reduce(:+) == longest} && sides.none? {|side| side <= 0}
  end
end

class TriangleError < StandardError

end
