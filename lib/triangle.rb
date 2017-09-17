require 'pry'
class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if @first <= 0 || @second <= 0 || @third <= 0 || inequity?
      raise TriangleError
    elsif @first == @second && @first == @third
      response = :equilateral
    elsif @first == @second || @first == @third || @second == @third
      response = :isosceles
    elsif !(@first == @second || @first == @third || @second == @third)
      response = :scalene
    end
    response
  end
end

def inequity?
  answer = false
  if !(@first + @second > @third)
    answer = true
  elsif !(@first + @third > @second)
    answer = true
  elsif !(@second + @third > @first)
    answer = true
  end

end

class TriangleError < StandardError

end
