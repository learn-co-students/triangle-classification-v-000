class Triangle

  def initialize(side_one_length, side_two_length, side_three_length)
    @side_one_length = side_one_length
    @side_two_length = side_two_length
    @side_three_length = side_three_length
  end

  class TriangleError < StandardError
    
    def get_married(person)
    self.partner = person
    if person.class != Person 
      raise PartnerError 
    else
      person.partner = self
    end
  end
  
end

    :equilateral

    :isosceles

    :scalene


end