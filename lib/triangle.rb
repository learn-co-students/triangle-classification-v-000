require 'pry'

class Triangle
  attr_reader :kind

  def initialize(x, y, z)
    if no_size?([x, y, z])
      raise TriangleError
    elsif inequality_broken?([x, y, z])
      raise TriangleError
    elsif [x, y, z].uniq.length == 1
      @kind = :equilateral
    elsif [x, y, z].uniq.length == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def no_size?(array)
    array.any? { |num| num <= 0 }
  end

  def inequality_broken?(array)
    array.max >= array.min + array.sort[-2]
  end

  class TriangleError < StandardError
  end

end
