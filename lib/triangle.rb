class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [@side1, @side2, @side3]
  end

  def kind
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
      self.isoceles?
        :isoceles
    else
      self.scalene?
        :scalene
    end
  end

  def equilateral?
    @side1 == @side2 && @side2 == @side3 && !(self.invalid?)
  end

  def isoceles?
  end

  def scalene?
  end

  def invalid?
    @all_sides.any? { |side| side <= 0 } || @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
  end


end

class TriangleError < StandardError
  def message
    "the triangle is invalid!"
  end
end