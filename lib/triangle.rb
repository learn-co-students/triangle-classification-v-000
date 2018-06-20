class Triangle
  # write code here
  attr_accessor :lengths
  def initialize(l1, l2, l3)
    @lengths = [l1, l2, l3]
  end

  def kind
    if lengths.any? {|l| l <= 0 } || (lengths[1] + lengths[2] <= lengths[0] || lengths[0] + lengths[2] <= lengths[1] || lengths[0] + lengths[1] <= lengths[2])
      raise TriangleError
    elsif lengths.all? {|l| l == lengths[0]}
      :equilateral
    elsif lengths[1] == lengths[2] || lengths[0] == lengths[2] || lengths[0] == lengths[1]
      :isosceles
    elsif lengths.all? {|l| lengths.reject {|r| l == r}.all?{|v| v != l}}
      :scalene
    end

  end


end

class TriangleError < StandardError

end
