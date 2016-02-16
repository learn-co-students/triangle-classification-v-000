require 'pry'
class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [@side1, @side2, @side3]
  end

  def kind
    binding.pry
    if invalid?
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif      
      self.equilateral?
        :equilateral
    elsif 
      self.isosceles?
        :isosceles
    else
      self.scalene?
        :scalene
    end
  end

  def equilateral?
    @side1 == @side2 && @side2 == @side3 && !(self.invalid?)
  end

  def isosceles?
    !(self.invalid?) && ((@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side2 != @side1))
  end

  def scalene?
    !(self.invalid?) && @side1 != @side2 && @side1 != @side3 && @side2 != @side3
  end

  def invalid?
    (@all_sides.any? { |side| side <= 0 }) || (@side1 + @side2 < @side3) || (@side2 + @side3 < @side1) || (@side1 + @side3 < @side2)
  end

end


class TriangleError < StandardError
  def message
    "the triangle is invalid!"
  end
end

