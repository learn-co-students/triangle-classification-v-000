
class Triangle

  attr_accessor :type, :length_1, :length_2, :length_3

  def initialize (length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

#symbols denoted by : mean that this string instance is the same and cannot be changed. it's the same instance of this particular string object.
#that's why symbols are used for labels that people don't ever want touched.
  def kind
    zeroes #calling the valid methods defined below
    inequality
    if @length_1 == @length_2 && @length_1 == @length_3
      self.type = :equilateral
    elsif @length_2 == @length_3 || @length_1 == @length_3 || @length_1 == @length_2
      self.type = :isosceles
    else
      self.type = :scalene
    end
  end

#seperate the validity checks into other methods for code cleanliness
  def zeroes
    if @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0
        raise TriangleError
      end
  end

  def inequality
    if @length_1 + @length_2 <= @length_3 || @length_1 + @length_3 <= @length_2 || @length_2 + @length_3 <= @length_1
        raise TriangleError
      end
  end

  class TriangleError < StandardError
    def message
    "You twat - you suck at coding!"
    end
  end
end

=begin
#test it out with this and run file (ruby lib/triangle.rb)
test = Triangle.new(-5, 4, 3)
test.kind
puts test.type
=end
