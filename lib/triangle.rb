require 'pry'
class Triangle
  # write code here
  attr_accessor :sides

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  def valid?
    valid = true
    valid = false if @sides.any?{|side| side <= 0}
    all_sides = @sides.inject{ |sum,x| sum + x }
    valid = false if @sides.any?{|side| all_sides - side <= side}
    valid
  end
  def kind
    if !self.valid?
      begin
        # binding.pry
        raise TriangleError
      end
    elsif @sides.uniq.count == 1
      :equilateral
    elsif @sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError

end
