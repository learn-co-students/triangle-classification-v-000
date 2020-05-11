class Triangle

attr_accessor :side1, :side2, :side3
 
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  
  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0 
      begin
      raise TriangleError
      end
    elsif side1 == side2 && side2 < side3
      begin
      raise TriangleError
      end
    elsif side1 == side3 && side1 < side2
      begin
      raise TriangleError
      end
    elsif side2 + side3 <= side1
      begin
      raise TriangleError
      end
  
    elsif side1 == side2 && side2 > side3
      :isosceles
    elsif side1 < side2 && side2 == side3
      :isosceles
    elsif side1 == side3 && side2 < side1
      :isosceles
    elsif side1 != side2 && side1 != side2 && side2 != side3
      :scalene
    elsif side1 == side2 && side2 == side3
      :equilateral
    end
  end
  
  class TriangleError < StandardError
  end

end


# def get_married(person)
#     self.partner = person
#     if person.class != Person 
#       raise PartnerError 
#     else
#       person.partner = self
#     end
#   end
