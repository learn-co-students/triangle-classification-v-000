require "pry"
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def formula
    sorted = [a, b, c].sort
    longest_side = sorted.pop
    sum = 0
    sorted.each {|each| sum+=each}

    longest_side >= sum #false
    # binding.pry
end

  def sides
    a <= 0 || b <= 0 || c <= 0  #false
  end

  def kind
   if formula == true || sides == true
  #  binding.pry
      begin
        raise TriangleError
      end
    end

    if [a, b, c].uniq.size == 1
      :equilateral

    elsif a == b || b == c || a == c
    :isosceles

    else
      :scalene
    end
  end


end

class TriangleError < StandardError
end
