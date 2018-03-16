require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a.to_f
    @b = b.to_f
    @c = c.to_f
  end

  def kind
    array = [a,b,c]
    if array.inject(:*) <= 0
      raise TriangleError
    elsif array.map {|x| x < (array.inject(:+) - x)}.include?(false)
      raise TriangleError
    elsif a == b && b == c && a == c
      :equilateral
    elsif a != b && a != c && b != c
      :scalene
    else
      :isosceles
    end

  end
end

class TriangleError < StandardError

end
