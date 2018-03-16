require 'pry'

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if !self.valid?
        raise TriangleError
    elsif side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    if (side_a > 0 && side_b > 0 && side_c > 0 ) &&
    (side_a + side_b > side_c &&
    side_b + side_c > side_a &&
    side_a + side_c > side_b)
    true
    else
      false
    end
  end

end

  class TriangleError < StandardError
  end




# class Person
#   attr_accessor :partner, :name
#
#   def initialize(name)
#     @name = name
#   end
#
#   def get_married(person)
#     self.partner = person
#     if person.class != Person
#       begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end
#   end
#
#   class PartnerError < StandardError
#     def message
#       "you must give the get_married method an argument of an instance of the person class!"
#     end
