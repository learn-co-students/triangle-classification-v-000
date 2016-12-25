class Triangle

  def initialize(line1, line2, line3)
    @lines = [line1, line2, line3]
  end

  def kind
    triangle_types = [:equilateral, :isosceles, :scalene]

    (0..2).each do |x|
      #copy array
      temp = Array.new(@lines)
      #seperate on element from array
      line = temp.delete_at(x)
      #compare separated element to sum of other 2
      lines_sum = temp[0] + temp[1]
      #if not a valid triangle raise error
      raise TriangleError if line >= lines_sum || line == 0
    end

    triangle_types[@lines.uniq.length-1]
  end
end

class TriangleError < StandardError
 "invalid triangle"
end
