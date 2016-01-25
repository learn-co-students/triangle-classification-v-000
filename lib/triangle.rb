class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    side = [a,b,c]

    side.sort!.each_index do |i|
      if (side[i] <= 0) || (side[i] + (side[i+1])) <= side[i+2]
        raise TriangleError
      elsif side[i] == side[i+1] && side[i] == side[i+2]
        return :equilateral
      elsif side[i] == side[i+1] || side[i] == side[i+2] || side[i+1] == side[i+2]
        return :isosceles
      elsif side[i] != side[i+1] && side[i] != side[i+2] && side[i+1] != side[i+2]
        return :scalene
      end
    end
  end
end


class TriangleError < StandardError
  def error_code
      "You're throwing this fancy Triangle Error!"
  end
end
