require 'pry'
class Triangle
  attr_accessor :tri_len_array
  def initialize(side_1, side_2, side_3)
  	@tri_len_array = [side_1, side_2, side_3]
  end

  def kind
    tri_len_array.sort!
    raise TriangleError if (tri_len_array[0] + tri_len_array[1]) <= tri_len_array[2]
		case tri_len_array.uniq.length
			when 1
			  return :equilateral
			when 2
			  return :isosceles
			else
				return :scalene
		end
  end
end

class TriangleError < StandardError
 # triangle error code
end