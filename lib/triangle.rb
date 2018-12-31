require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end
  
  def kind
    triangle = [@sideone, @sidetwo, @sidethree]
    counts = Hash.new 0
    triangle.each { |length| 
    counts[length] += 1 }
    
    
# binding.pry
      if counts.value?(3) && countsValid(counts) 
        :equilateral
      elsif counts.value?(2) && countsValid(counts) 
        :isosceles
      elsif counts.value?(1) && countsValid(counts) 
        :scalene
      else
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
      end
    end

  
  def countsValid(hash)
    hash.keys.all? {|side| side > 0}
  end
  
  class TriangleError < StandardError
    def message
      "This ain't no Triangle! I pity the fool!"
    end
  end

end
