class Triangle
  attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end

    def kind
      arr = [self.side_1, self.side_2, self.side_3].sort
      if arr[0] <= 0 || (arr[0] + arr[1] <= arr[2])
        raise TriangleError
      elsif arr[0] == arr[2]
        :equilateral
      elsif arr[0] == arr[1] || arr[1] == arr[2]
        :isosceles
      else
        :scalene
      end


      #if (self.side_1 == self.side_2 && self.side_1 == self.side_3) && (self.side_1 > 0  && self.side_2 > 0 && self.side_3 > 0)
      #  :equilateral
      #elsif (self.side_1 != self.side_2 && self.side_1 != self.side_3 && self.side_2 != self.side_3) && (self.side_1 > 0  && self.side_2 > 0 && self.side_3 > 0)
      #  :scalene
      #elsif (self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0)
      #  raise TriangleError
      #elsif (self.side_1 > (self.side_2 + self.side_3)) || (self.side_2 > (self.side_1 + self.side_3)) || (self.side_3 > (self.side_1 + self.side_2))
      #  raise TriangleError
      #else
      #  :isosceles
      #end
    end

end # => End Triangle class

class TriangleError < StandardError

end
