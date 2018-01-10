require 'pry'

class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
    @sides = [@first, @second, @third]
  end

  def kind
    if self.valid?
      #CHECK STUFF
      if @first == @second && @second == @third
        :equilateral
      elsif @first == @second || @first == @third || @second == @third
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    # binding.pry
    valid = true
    if @first >= @second + @third || @second >= @first + @third || @third >= @first + @second
      valid = false
    end
    @sides.each {|side| valid = false if side <= 0}
    valid
  end
end

class TriangleError < StandardError
end
