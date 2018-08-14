class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize (side_1, side_2, side_3)
    @side_1 = side_1 
    @side_2 = side_2 
    @side_3 = side_3 
  end
    
  def kind 
    
    equi_hash = {equilateral: 3}
    iso_hash = {isosceles: 2}
    scal_hash = {scalene: 1}
      if side_1 == 0 || side_2 == 0 || side_3 == 0 || side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
        raise TriangleError
         elsif side_1 == side_2 && side_2 == side_3 
         return equi_hash.key(3)
         elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3 
         return scal_hash.key(1)
         elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
         return iso_hash.key(2)
      end
      
  end
    
  
  
  class TriangleError < StandardError
  end
end
