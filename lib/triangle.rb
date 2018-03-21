require 'pry'

class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def valid?
    (@x > 0 && @y > 0 && @z > 0) && (@x + @y > @z) && (@y + @z > @x) && (@x + @z > @y)
  end

  def triangulator(x, y, z)
    if @x == @y && @y == @z
      :equilateral
    elsif @x != @y && @y != @z && @x != @z
      :scalene
    elsif (@x == @y && @y != @z) || (@y == @z && @z != @x) || (@x == @z && @z != @y)
      :isosceles
    end
  end


  def kind
    # binding.pry
    if valid?
      triangulator(@x, @y, @z)
    else
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   error.message
      # end
    end
  end
end

class TriangleError < StandardError
  def message
    "That's no triangle!"
  end
end
