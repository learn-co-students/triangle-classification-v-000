require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end
  
  def kind
    triangle =[@sideone, @sidetwo, @sidethree]
    counts = Hash.new 0
    triangle.each { |length| 
    counts[length] += 1 }
    
    if triangle.any? {|sidelength| sidelength == 0}
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
      elsif counts.value?(3)
      :equilateral
      elsif counts.value?(2)
      :isosceles
      elsif counts.value?(1)
      :scalene
    end

  end  
  
  class TriangleError < StandardError
    def message
      "This ain't no Triangle! I pity the fool!"
    end
  end

end
