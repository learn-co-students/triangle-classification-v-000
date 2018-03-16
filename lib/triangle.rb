#require 'pry'

class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3, :type

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def greater_than_zero
    if @l1 > 0 && @l2 > 0 && @l3 > 0
      true
    else
      false
    end
  end

  def sum_sides
    if ((@l1 + @l2) > @l3) && ((@l2 + @l3) > @l1) && ((@l1 + @l3) > @l2)
      true
    else
      raise_error
    end
  end

  def triangle_type
    if @l1 == @l2 && @l1 == @l3 && @l2 == @l3
      @type = :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  def raise_error
    #begin
      raise TriangleError
    #rescue TriangleError => error
      puts error.message
    #end
  end

  def kind
    if sum_sides && greater_than_zero
      triangle_type
    else
      raise_error
    end
  end

end

class TriangleError < StandardError
    def message
      "You done messed up!!"
    end
end
