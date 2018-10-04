require 'pry'
class Triangle
  attr_reader :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def side_too_large
    if one + two <= three || two + three <= one || one + three <= two
      true
    else
      false
    end
  end

  def side_invalid
    if one <= 0 || two <= 0 || three <= 0
      true
    else
      false
    end
  end

  def equilateral?
    if one == two && two == three
      true
    else
      false
    end
  end

  def isosceles?
    if one == two || two == three || one == three
      true
    else
      false
    end
  end

  def scalene?
    if one != two && two != three && one != three
      true
    else
      false
    end
  end
  
  def invalid_triangle
    if side_invalid || side_too_large
      true
    else
      false
    end
  end

  def kind
    if invalid_triangle
      #begin
      raise TriangleError
      #rescue TriangleError => error
       # puts error.message
      #end

    elsif equilateral?
      :equilateral

    elsif isosceles?
      :isosceles

    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle: A triangle side must be greater than 0, and one side cannot be greater than the sum of the other sides."
    end
  end

end
