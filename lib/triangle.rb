require 'pry'
class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind2
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  def kind

    check1 = side1>0 && side2>0 && side3>0
    check2 = side1+side2>side3 && side1+side3>side2 && side2+side3>side1

    if check1 == false || check2 == false
     raise TriangleError
    else
      if side1 == side2 && side2 == side3
          :equilateral
        elsif side1 == side2 || side2 == side3 || side1 == side3
          :isosceles
        else
          :scalene
        end
    end

  end



  class TriangleError < StandardError
  end

end
