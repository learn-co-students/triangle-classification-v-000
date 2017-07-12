class Triangle
  attr_accessor :side1, :side2, :side3, :types
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if side1 <= 0 || side2 <= 0 || side3 <=0 || side1 >= side2 + side3 || side2 >= side1 + side3 || side3 >= side1 + side2
      @types = 'illegal'

    elsif side1 == side2 && side2 == side3
      @types = :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      @types = :isosceles
    else
      @types = :scalene
    end


  end
  # write code here
  def kind
    @types
    if @types == 'illegal'
      raise TriangleError
    else
      @types
    end

  end

end


#1. `:equilateral` # 정삼각형

#2. `:isosceles` #이등변 삼각형

#3. `:scalene` # 삼각형

class TriangleError < StandardError

end
