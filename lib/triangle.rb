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
    counts = Hash.new 0 #practice working with hashes
    triangle.each { |length| 
    counts[length] += 1 }
    
    if violatesInequality(triangle)
      raise TriangleError
    end

    if counts.value?(3) && countsValid(counts) 
      :equilateral
    elsif counts.value?(2) && countsValid(counts) 
      :isosceles
    elsif counts.value?(1) && countsValid(counts) 
      :scalene
    else
        raise TriangleError
    end
    
  end
    
  #violatesInequality tests if triangle violates triangle inequality principle
  def violatesInequality(array)
    array[0] + array[1] <= array[2] ||
    array[2] + array[1] <= array[0] ||
    array[0] + array[2] <= array[1]
  end
    
  #countsValid confirms number of equal sides
  def countsValid(hash)
    hash.keys.any? {|side| side <= 0} ? false : true
  end
  
  class TriangleError < StandardError
    def message
      "This ain't no Triangle! I pity the fool!"
    end
  end

end