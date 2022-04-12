class Triangle
  def initialize(sides)
    @sides = sides
  end

  def valid_triangle?
    # return false if @sides.any? { |side| side.zero? }
    @sides.max < @sides.sum/2.0
  end

  def equilateral?
    self.valid_triangle? && @sides[0] == @sides[1] && @sides[1] == @sides[2]
  end
  
  def scalene?
    self.valid_triangle? && @sides[0] != @sides[1] && @sides[1] != @sides[2]
  end

  def isosceles?
    self.valid_triangle? && @sides.sort.each_cons(2).any? { |pair| pair[0] == pair[1] }
  end
end