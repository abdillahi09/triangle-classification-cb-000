class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x + y < z || y + z < x || z + x < y
      raise TriangleError
    elsif x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    elsif x != y && y != z && x != z 
      :scalene
    else x = 0
      raise TriangleError
    end
  end
end

  class TriangleError < StandardError
    def kind
      "This is not a triangle, please double check your work"
    end

end
