require 'pry'

class Triangle
  attr_accessor :kind
  attr_reader :equilateral, :isosceles, :scalene


  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    self.legal?
    if @sides.uniq.count == 1
      @kind = :equilateral
    elsif @sides.uniq.count == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end  
  end

  def legal?
    @sum = @sides.reduce(:+).to_f
    if @sides.any?{|side| side <= 0} || @sides.any?{|side| (@sum-side) <= side}
      raise TriangleError
    else
      return true
    end
  end

end

class TriangleError < StandardError
  def message
    "This is not a triangle. Each side must be greater than 0, and the sum of any two sides must be greater than the third side."  
  end
end