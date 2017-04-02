class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      false
    elsif
      @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      false
    else
      true
    end
  end

  def kind
    if self.valid? == false
      #begin
        raise TriangleError
        #rescue TriangleError => error
          #puts error.message
      #end
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end

end

# rescue function was interrupting raise error tests so commented out.

class TriangleError < StandardError

  #def message
  #  "Not a valid triangle!"
  #end

end
