require "pry"
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def formula
    # binding.pry
    #  self.a + self.b > self.c || self.b + self.c > self.a || self.c + self.a > self.b
    sorted = [a, b, c].sort
    longest_side = sorted.pop
    sum = 0
    sorted.each {|each| sum+=each}

    longest_side <= sum #false
    binding.pry
end

  def sides
    a <= 0 || b <= 0 || c <= 0  #false
  end

  def kind
   formula == true || sides == true
  #  binding.pry
      begin
        raise TriangleError
      rescue TriangleError => error
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
