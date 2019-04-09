#class Triangle
#attr_attr
#attr_accessor :side_1, :side_2, :side_3,
#attr_reader :equilateral, :isosceles, :scalene

class Triangle
  def initialize(side_1, side_2, side_3)
    @triangle_sides = []
    @triangle_sides << side_1
    @triangle_sides << side_2
    @triangle_sides << side_3
  end

  #def sum(triangle_side)

    #  if @triangle_sides.uniq.length == 1
    #    return :equilateral
    #  elsif @triangle_sides.uniq.length == 2
      #  return :isosceles
    #  else
      #  return :scalene
  #  #  end
  #  end
#  end

def sum
  sum_one_two = @triangle_sides[0] + @triangle_sides[1]
  sum_one_three = @triangle_sides[0] + @triangle_sides[2]
  sum_two_three = @triangle_sides[1] + @triangle_sides[2]

  if (@triangle_sides.none? {|side| side <= 0}) &&
    (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
    return true
  else
    return false
  end
end
# i hate this lab
def kind
  if sum
    if @triangle_sides.uniq.length == 1
      return :equilateral
    elsif @triangle_sides.uniq.length == 2
      return :isosceles
    else
      return :scalene
    end
  else
    raise TriangleError
  end
end
end

class TriangleError < StandardError
puts "help me "
end

      #  triangle_side.each_with_index {|name, index|  print " #{index +1}. #{name}" }

      #else
      #  puts "The line is currently empty."
