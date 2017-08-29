class Triangle

  attr_accessor :first_length, :second_length, :third_length

  def initialize (first_length, second_length, third_length)
    @first_length = first_length
    @second_length = second_length
    @third_length = third_length
  end

  def kind
    if illegal_check_zero(self.first_length, self.second_length, self.third_length) || illegal_check_inequality(self.first_length, self.second_length, self.third_length)
    #  begin
        raise TriangleError
    #  rescue TriangleError => error
    #    puts error.message
    #  end
    else
      if self.first_length == self.second_length && self.second_length == self.third_length
        :equilateral
      elsif self.first_length != self.second_length && self.second_length != self.third_length && self.third_length != self.first_length
        :scalene
      else
        :isosceles
      end
    end
  end
end

def illegal_check_zero (first_length, second_length, third_length)
  [first_length, second_length, third_length].all? { |length| length <= 0 }
end

def illegal_check_inequality (first_length, second_length, third_length)
  (self.first_length + self.second_length) <= self.third_length || (self.second_length + self.third_length) <= self.first_length || (self.first_length + self.third_length) <= self.second_length
end







  class TriangleError < StandardError

    def message
      "The lengths given do not make a valid triangle."
    end

  end
