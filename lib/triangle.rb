class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize ( s1, s2, s3 )
    @side1 = s1
    @side2 = s2
    @side3 = s3
  end

  def valid?
    (side1>0 && side2>0 && side3>0) && (side1+side2>side3 && side2+side3>side1 && side1+side3>side2)
  end

  def equilateral?
    side1==side2 && side2==side3
  end
  def isosceles?
    side1==side2  || side2==side3 || side1==side3
  end
  def kind
    if !valid?
      raise TriangleError
    elsif equilateral?
      rtn_kind = :equilateral
    elsif isosceles?
      rtn_kind = :isosceles
    else
      rtn_kind = :scalene
    end
    rtn_kind
  end

  class TriangleError < StandardError
  end
end
