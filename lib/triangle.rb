class TriangleError < StandardError
end

class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]

    if @sides.any? {|side| side <= 0}
      raise TriangleError.new, "Cannot create a triangle "
    end

    @sides.combination(2).each do |combination|
      last_side = @sides.clone
      combination.each {|item| last_side.delete(item)}
      if !last_side.empty? && combination.inject(:+) <= last_side.first
        raise TriangleError.new, "Cannot create a triangle"
      end
    end

    classify
  end

  def classify
    if @sides.uniq.count == 1
      @kind = :equilateral
    elsif @sides.uniq.count == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def kind
    @kind
  end
end
