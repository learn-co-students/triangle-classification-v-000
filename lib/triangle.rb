class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one=side_one
    @side_two=side_two
    @side_three=side_three
  end

  def valid?
    if @side_one==0 || @side_two==0||  @side_three==0
    end

  end

  def triangle_type
    if @side_one==@side_two and @side_two==@side_three
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end
