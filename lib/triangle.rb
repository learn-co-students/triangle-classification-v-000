require 'pry'

class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if !sides_can_equal?
      raise TriangleError
    end
    return what_type
  end
  def side_zero?
    [@a, @b, @c].each do |x|
      if x == 0
        return false
      end
    end
    return true
  end
  def sides_can_equal?
    side_zero?
    [@a + @b > @c, @a + @c > @b, @b + @c > @a].each do |x|
      if x == false
        return false
      end
    end
    return true
  end
  def what_type
    if @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def self.message
    "test"
  end
end
